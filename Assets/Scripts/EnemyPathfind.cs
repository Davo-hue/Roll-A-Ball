using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class EnemyPathfind : MonoBehaviour
{

    public NavMeshAgent navAgent;
    public GameObject player;

   

    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");   
    }

    // Update is called once per frame
    void Update()
    {
        if(player.GetComponent<PlayerController>().canFollow == true)
        {
            navAgent.SetDestination(player.transform.position);
        }
        else
        {
            return;
        }

    }
}
