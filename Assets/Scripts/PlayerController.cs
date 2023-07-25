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
    GameObject resetPoint;
    bool resetting = false;
    Color originalColour;
    

    [Header("UI")]
    public GameObject inGamePanel;
    public GameObject GameOverPanel;
    public TMP_Text scoreText;
    public TMP_Text timerText;
    public TMP_Text winTimeText;
    

   
    void Start()            
    {
        rb = GetComponent<Rigidbody>();
        pickupCount = GameObject.FindGameObjectsWithTag("Pick Up").Length;
        SetCountText();
        timer = FindObjectOfType<Timer>();
        timer.StartTimer();
        Time.timeScale = 1;
        inGamePanel.SetActive(true);    
        GameOverPanel.SetActive(false);
        resetPoint = GameObject.Find("Reset Point");
        originalColour = GetComponent<Renderer>().material.color;
    }

    void Update()
    {
        timerText.text = "Time:" + timer.GetTime().ToString("F2");
    }

    void FixedUpdate()
    {
        if (resetting)
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
        gameOver = true;
        timer.StopTimer();
        GameOverPanel.SetActive(true);
        inGamePanel.SetActive(false);
        winTimeText.text = "Your time was: " + timer.GetTime().ToString("F2");
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

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("Respawn"))
        {
            StartCoroutine(ResetPlayer());
        }

    }

    public IEnumerator ResetPlayer()

    {
        resetting = true;
        GetComponent<Renderer>().material.color = Color.black;
        rb.velocity = Vector3.zero;
        Vector3 startPos = transform.position;
        float resetSpeed = 2f;
        var i = 0.0f;
        var rate = 1.0f / resetSpeed;
        while (i < 1.0f)
        {
            i += Time.deltaTime * rate;
            transform.position = Vector3.Lerp(startPos, resetPoint.transform.position, i);
            yield return null;
        }
        GetComponent<Renderer>().material.color = originalColour;
        resetting = false;
    }
}
