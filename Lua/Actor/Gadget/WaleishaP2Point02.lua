require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WaleishaP2Point02 = class("WaleishaP2Point02", GadgetActorProxy)
WaleishaP2Point02.defaultAlias = "WaleishaP2Point02"
local Q15033ClientConfig = require("Quest/Client/Q15033ClientConfig")

local this
local subIDs = Q15033ClientConfig.SubIDs
local datas = Q15033ClientConfig.Datas
local npcs = Q15033ClientConfig.Npcs
local points = Q15033ClientConfig.Points

function WaleishaP2Point02:OnPostDataPrepare()
    print("WaleishaP2Point02 - OnPostDataPrepare")
    this = self
end

function WaleishaP2Point02:OnPostComponentPrepare()
    print("WaleishaP2Point02 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15033)
end

function WaleishaP2Point02:TriggerIn()
    print("WaleishaP2Point02 - TriggerIn")
    actorMgr:GetActor("15033"):RequestInteraction("Npc1098", "", true)
    this:DestroySelf()
end

function WaleishaP2Point02:PreTriggerIn()
    print("WaleishaP2Point02 - PreTriggerIn")
end

function WaleishaP2Point02:LightUpTriggerIn()
    print("WaleishaP2Point02 - LightUpTriggerIn")
end

function WaleishaP2Point02:TriggerOut()
    print("WaleishaP2Point02 - TriggerOut")
end

return WaleishaP2Point02
