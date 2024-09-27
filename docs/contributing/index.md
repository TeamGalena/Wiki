---
hide:
  - navigation
  - toc
---

# Contributing to the Wiki

Every page can be edited by modifing the content of it's respective markdown (`.md`) file.
You are redirected to the github edit dialog by using the edit button visible on every page on the top-right.

For contributers that are not within the organization, this means that you can create a [Fork](https://github.com/TeamGalena/Wiki/fork) and submit your changes/additions using a Pull-Request.

Pages are located withing the `docs` directory and resolve to the following routes:

```
docs/index.md -> / (the home page)
docs/something.md -> /something/
docs/something/index.md -> /something/
docs/something/else.md -> /something/else/
docs/something/even/elser.md -> /something/even/elser/
```

## Useful snippets

### Links

Links can be created by using the syntax `[link text](link url)`

- [Link to GitHub](https://github.com)
- [Link a different Page](../members.md)
- [Link with a tooltip](../index.md "Wow you hovered me!")

```
- [Link to GitHub](https://github.com)
- [Link a different Page](../members.md)
- [Link with a tooltip](../index.md "Wow you hovered me!")
```

### Images

Images can be embedded simlar to links, just by prefixing them with a `!`

<div class="grid cards" markdown>

-  
   ```
   ![](/assets/icon.png)
   ```
    
    ![](/assets/icon.png){ width=100 align=right }

    I am a simple image
 
-   
   ```
   ![](/assets/icon.png){ .on-glb }
   ```
    
    ![](/assets/icon.png){ .on-glb width=100 align=right }
 
    You can open me up
 
-   
   ```
   ![](/assets/icon.png){ .inline-icon }
   ```
    
    I am an inline icon ![](/assets/icon.png){ .inline-icon } within some text

</div>

Icons of blocks & items can be embedded using the following syntax.

<div class="grid" style="grid-template-columns: 100px 1fr; align-items: center" markdown>


![]({{ hosts.icons }}/minecraft/obsidian.png)

```
![]({​{ hosts.icons }}/minecraft/obsidian.png)
```

![]({{ hosts.icons }}/oreganized/goopy_lead_block.png)

```
![]({​{ hosts.icons }}/oreganized/goopy_lead_block.png)
```

![]({{ hosts.icons }}/windswept/chestnuts.png)

```
![]({​{ hosts.icons }}/windswept/chestnuts.png)
```

</div>

[:octicons-search-16: Browse available icons](https://icons.macarena.ceo/browse){ .md-button target="_blank" }

### Admonitions

Admonitions can be created with several types, specific by in the example below by the work `info`.
You can read about all of them [here](https://squidfunk.github.io/mkdocs-material/reference/admonitions/#supported-types).


!!! info "Example admonitions"
    Here is some content for your admonitions, although this is optional.


```
!!! info "Example admonitions"
    Here is some content for your admonitions, although this is optional.
```