require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WaleishaP1Point04 = class("WaleishaP1Point04", GadgetActorProxy)
WaleishaP1Point04.defaultAlias = "WaleishaP1Point04"
local Q15018ClientConfig = require("Quest/Client/Q15018ClientConfig")

local this
local subIDs = Q15018ClientConfig.SubIDs
local datas = Q15018ClientConfig.Datas
local npcs = Q15018ClientConfig.Npcs
local points = Q15018ClientConfig.Points

function WaleishaP1Point04:OnPostDataPrepare()
    print("WaleishaP1Point04 - OnPostDataPrepare")
    this = self
end

function WaleishaP1Point04:OnPostComponentPrepare()
    print("WaleishaP1Point04 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15018)
end

function WaleishaP1Point04:TriggerIn()
    print("WaleishaP1Point04 - TriggerIn")
    actorUtils.FinishQuestID(false, 1501806)
    this:DestroySelf()
end

function WaleishaP1Point04:PreTriggerIn()
    print("WaleishaP1Point04 - PreTriggerIn")
end

function WaleishaP1Point04:LightUpTriggerIn()
    print("WaleishaP1Point04 - LightUpTriggerIn")
end

function WaleishaP1Point04:TriggerOut()
    print("WaleishaP1Point04 - TriggerOut")
end

return WaleishaP1Point04
