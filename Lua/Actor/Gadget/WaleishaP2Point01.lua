require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WaleishaP2Point01 = class("WaleishaP2Point01", GadgetActorProxy)
WaleishaP2Point01.defaultAlias = "WaleishaP2Point01"
local Q15033ClientConfig = require("Quest/Client/Q15033ClientConfig")

local this
local subIDs = Q15033ClientConfig.SubIDs
local datas = Q15033ClientConfig.Datas
local npcs = Q15033ClientConfig.Npcs
local points = Q15033ClientConfig.Points

function WaleishaP2Point01:OnPostDataPrepare()
    print("WaleishaP2Point01 - OnPostDataPrepare")
    this = self
end

function WaleishaP2Point01:OnPostComponentPrepare()
    print("WaleishaP2Point01 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15033)
end

function WaleishaP2Point01:TriggerIn()
    print("WaleishaP2Point01 - TriggerIn")
    this:DestroySelf()
end

function WaleishaP2Point01:PreTriggerIn()
    print("WaleishaP2Point01 - PreTriggerIn")
end

function WaleishaP2Point01:LightUpTriggerIn()
    print("WaleishaP2Point01 - LightUpTriggerIn")
end

function WaleishaP2Point01:TriggerOut()
    print("WaleishaP2Point01 - TriggerOut")
end

return WaleishaP2Point01
