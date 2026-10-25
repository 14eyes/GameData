require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WaleishaP1Point015 = class("WaleishaP1Point015", GadgetActorProxy)
WaleishaP1Point015.defaultAlias = "WaleishaP1Point015"
local Q15018ClientConfig = require("Quest/Client/Q15018ClientConfig")

local this
local subIDs = Q15018ClientConfig.SubIDs
local datas = Q15018ClientConfig.Datas
local npcs = Q15018ClientConfig.Npcs
local points = Q15018ClientConfig.Points

function WaleishaP1Point015:OnPostDataPrepare()
    print("WaleishaP1Point015 - OnPostDataPrepare")
    this = self
end

function WaleishaP1Point015:OnPostComponentPrepare()
    print("WaleishaP1Point015 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15018)
end

function WaleishaP1Point015:TriggerIn()
    print("WaleishaP1Point015 - TriggerIn")
    actorUtils.FinishQuestID(false, 1501805)
    this:DestroySelf()
end

function WaleishaP1Point015:PreTriggerIn()
    print("WaleishaP1Point015 - PreTriggerIn")
end

function WaleishaP1Point015:LightUpTriggerIn()
    print("WaleishaP1Point015 - LightUpTriggerIn")
end

function WaleishaP1Point015:TriggerOut()
    print("WaleishaP1Point015 - TriggerOut")
end

return WaleishaP1Point015
