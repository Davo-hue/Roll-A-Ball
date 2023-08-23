using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class Speaker : MonoBehaviour
{
    public TMP_Text canvasText1;
    private void Start()
    {
        Invoke("DisableText", 10f);
    }

    void DisableText()
    {
        canvasText1.enabled = false;    
    }

    private void OnEnable()
    {
        Invoke("ResetImage", 10f);
    }

    void ResetImage()
    {
        GetComponent<Image>().gameObject.SetActive(false);
    }







}
