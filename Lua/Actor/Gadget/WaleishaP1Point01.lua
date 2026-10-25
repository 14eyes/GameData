require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WaleishaP1Point01 = class("WaleishaP1Point01", GadgetActorProxy)
WaleishaP1Point01.defaultAlias = "WaleishaP1Point01"
local Q15018ClientConfig = require("Quest/Client/Q15018ClientConfig")

local this
local subIDs = Q15018ClientConfig.SubIDs
local datas = Q15018ClientConfig.Datas
local npcs = Q15018ClientConfig.Npcs
local points = Q15018ClientConfig.Points

function WaleishaP1Point01:OnPostDataPrepare()
    print("WaleishaP1Point01 - OnPostDataPrepare")
    this = self
end

function WaleishaP1Point01:OnPostComponentPrepare()
    print("WaleishaP1Point01 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15018)
end

function WaleishaP1Point01:TriggerIn()
    print("WaleishaP1Point01 - TriggerIn")
    actorMgr:GetActor("15018"):RequestInteraction("Npc1098", "", true)
    this:DestroySelf()
end

function WaleishaP1Point01:PreTriggerIn()
    print("WaleishaP1Point01 - PreTriggerIn")
end

function WaleishaP1Point01:LightUpTriggerIn()
    print("WaleishaP1Point01 - LightUpTriggerIn")
end

function WaleishaP1Point01:TriggerOut()
    print("WaleishaP1Point01 - TriggerOut")
end

return WaleishaP1Point01
