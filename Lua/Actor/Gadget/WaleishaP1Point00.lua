require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WaleishaP1Point00 = class("WaleishaP1Point00", GadgetActorProxy)
WaleishaP1Point00.defaultAlias = "WaleishaP1Point00"
local Q15018ClientConfig = require("Quest/Client/Q15018ClientConfig")

local this
local subIDs = Q15018ClientConfig.SubIDs
local datas = Q15018ClientConfig.Datas
local npcs = Q15018ClientConfig.Npcs
local points = Q15018ClientConfig.Points

function WaleishaP1Point00:OnPostDataPrepare()
    print("WaleishaP1Point00 - OnPostDataPrepare")
    this = self
end

function WaleishaP1Point00:OnPostComponentPrepare()
    print("WaleishaP1Point00 - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "LQ15018_5_5_VaresaQuest", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 15018)
end

function WaleishaP1Point00:TriggerIn()
    print("WaleishaP1Point00 - TriggerIn")
    actorMgr:GetActor("15018"):RequestInteraction("Npc1098", "", true)
    this:DestroySelf()
end

function WaleishaP1Point00:PreTriggerIn()
    print("WaleishaP1Point00 - PreTriggerIn")
end

function WaleishaP1Point00:LightUpTriggerIn()
    print("WaleishaP1Point00 - LightUpTriggerIn")
end

function WaleishaP1Point00:TriggerOut()
    print("WaleishaP1Point00 - TriggerOut")
end

return WaleishaP1Point00
