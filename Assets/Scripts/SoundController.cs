using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Accessibility;

public class SoundController : MonoBehaviour
{

    public AudioClip pickupSound;
    public AudioClip winSound;

    AudioSource audioSource;
   
    public void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    
    public void PlayPickupSound()
    {
        PlaySound(pickupSound);
    }

    public void PlayWinSound()
    {
        PlaySound(winSound);
    }

    public void PlaySound(AudioClip _newSound)
    {
        audioSource.clip = _newSound;
    }

    public void PlayCollisionSound(GameObject _go)
    {
        if (_go.GetComponent<AudioSource>() != null)
        {
            _go.GetComponent<AudioSource>().Play();
        }
    }
}


