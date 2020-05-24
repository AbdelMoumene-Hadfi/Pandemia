package com.pandemia.Pendemia.security.services;
/*
import com.pandemia.Pendemia.model.user.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;
import java.util.UUID;

public class UserDetailsImpl implements UserDetails {
    private UUID Id;
    private String email;
    private String Name;
    private String Password;
    private String Adresse;
    private String Categorie;
    private String Telephone;
    private Collection<? extends GrantedAuthority> authorities;

    public UserDetailsImpl(UUID Id,String email,String Name,String Password,String Adresse,String Telephone,Collection<? extends GrantedAuthority> authorities) {
        this.Id = Id ;
        this.email = email;
        this.Name = Name;
        this.Password = Password ;
        this.Adresse = Adresse ;
        this.Categorie = Categorie ;
        this.Telephone = Telephone ;
        this.authorities = authorities ;
    }

    public static UserDetailsImpl build(User user) {
        List<GrantedAuthority> authorities = user.getRoles().stream()
    }

    @Override
    public String getPassword() {
        return null;
    }

    @Override
    public String getUsername() {
        return null;
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }

    @Override
    public boolean isEnabled() {
        return false;
    }
}
*/