using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
   
    public float speed = 5.0f;
    private Rigidbody rb;
    private int pickupCount; 
    

   
    void Start()            
    {
        rb = GetComponent<Rigidbody>();
        // Get the number of pickups in our scene
        pickupCount = GameObject.FindGameObjectsWithTag("Pick Up").Length;
        // run check pickups function
        CheckPickups();
    }

    
    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(moveHorizontal, 0, moveVertical);
        rb.AddForce(movement);
        
    }

    

    private void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Pick Up")
        {
            Destroy(other.gameObject);
            //Decrament the pickup count 
            pickupCount -= 1;
            // run chack pickups function
            CheckPickups();
        }
    }

    void CheckPickups()
    {
        print("PickUps left: " + pickupCount);

        if (pickupCount == 0)
        {
            print("Yay! You killed them all!");
        }
    }
}
