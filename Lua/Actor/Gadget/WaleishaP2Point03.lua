require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WaleishaP2Point03 = class("WaleishaP2Point03", GadgetActorProxy)
WaleishaP2Point03.defaultAlias = "WaleishaP2Point03"
local Q15033ClientConfig = require("Quest/Client/Q15033ClientConfig")

local this
local subIDs = Q15033ClientConfig.SubIDs
local datas = Q15033ClientConfig.Datas
local npcs = Q15033ClientConfig.Npcs
local points = Q15033ClientConfig.Points

function WaleishaP2Point03:OnPostDataPrepare()
    print("WaleishaP2Point03 - OnPostDataPrepare")
    this = self
end

function WaleishaP2Point03:OnPostComponentPrepare()
    print("WaleishaP2Point03 - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15033)
end

function WaleishaP2Point03:TriggerIn()
    print("WaleishaP2Point03 - TriggerIn")
    actorMgr:GetActor("15033"):RequestInteraction("Npc1098", "", true)
    this:DestroySelf()
end

function WaleishaP2Point03:PreTriggerIn()
    print("WaleishaP2Point03 - PreTriggerIn")
end

function WaleishaP2Point03:LightUpTriggerIn()
    print("WaleishaP2Point03 - LightUpTriggerIn")
end

function WaleishaP2Point03:TriggerOut()
    print("WaleishaP2Point03 - TriggerOut")
end

return WaleishaP2Point03
