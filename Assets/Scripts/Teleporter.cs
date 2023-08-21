using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using UnityEngine;

public class Teleporter : MonoBehaviour
{
    public GameObject myPartner;
    public bool canTeleport = true;

    void Start()
    {
        canTeleport = true; 
    }

    // Update is called once per frame
    void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player") && canTeleport)
        {
            myPartner.GetComponent<Teleporter>().canTeleport = false;
            Vector3 endPos = new Vector3(myPartner.transform.position.x, 1, myPartner.transform.position.z);
            other.transform.position = endPos;
        }

        
    }

    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player") && !canTeleport)
            canTeleport = true;
    }
}
