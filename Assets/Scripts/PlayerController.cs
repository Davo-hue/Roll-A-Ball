using JetBrains.Annotations;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
   
    public float speed = 5.0f;
    private Rigidbody rb;
    private int pickupCount;
    private Timer timer;
    private bool gameOver = false; 

    [Header("UI")]
    public GameObject inGamePanel;
    public GameObject GameOverPanel;
    public TMP_Text scoreText;
    public TMP_Text timerText;
    public TMP_Text winTimeText;
    

   
    void Start()            
    {
        rb = GetComponent<Rigidbody>();
        // Get the number of pickups in our scene
        pickupCount = GameObject.FindGameObjectsWithTag("Pick Up").Length;
        // run check pickups function
        SetCountText();
        // get the timer object
        timer = FindObjectOfType<Timer>();
        timer.StartTimer(); 
        // turn on in game panel
        inGamePanel.SetActive(true);    
        // turn off our win panel
        GameOverPanel.SetActive(false);   
    }

    void Update()
    {
        timerText.text = "Time:" + timer.GetTime().ToString("F2");
    }

    void FixedUpdate()
    {
        if (gameOver == true)
            return;

        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(moveHorizontal, 0, moveVertical);
        rb.AddForce(movement * speed);
        
    }

    

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Pick Up")
        {
            Destroy(other.gameObject);
            //Decrament the pickup count 
            pickupCount -= 1;
            // run check pickups function
            SetCountText();
        }
    }

    void SetCountText()
    {
        //display amount of pickups left
        scoreText.text = "PickUps left: " + pickupCount;

        if (pickupCount == 0)
        {
            WinGame();
        }
    }

    void WinGame()
    {
        //set game over to true
        gameOver = true;
        // stop the timer 
        timer.StopTimer();
        //Turn on our win panel
        GameOverPanel.SetActive(true);
        // turn off our ingame panel
        inGamePanel.SetActive(false);
        // display the timer on the win time text
        winTimeText.text = "Your time was: " + timer.GetTime().ToString("F2");
        //set valocity to rigid body to 0
        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;


    }

    public void RestartGame()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene
            (UnityEngine.SceneManagement.SceneManager.GetActiveScene().name);
    }

    public void QuitGame()
    {
        Application.Quit();
    }
}
