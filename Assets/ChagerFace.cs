using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChagerFace : MonoBehaviour
{

    public Image chSprite;
    public Sprite forward;
    public Sprite backward;
    public Sprite left;
    public Sprite right;

   
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.W))
        {
            chSprite.sprite = forward;
        }
        else if (Input.GetKeyDown(KeyCode.A))
        {
            chSprite.sprite = right;
        }
        else if (Input.GetKeyDown(KeyCode.S))
        {
            chSprite.sprite = backward;
        }
        else if (Input.GetKeyDown(KeyCode.D))
        {
            chSprite.sprite = left;
        }


    }
}
