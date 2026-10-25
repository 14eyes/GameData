require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021901_TriggerIn = class("Q4021901_TriggerIn", GadgetActorProxy)
Q4021901_TriggerIn.defaultAlias = "Q4021901_TriggerIn"
local Q40219ClientConfig = require("Quest/Client/Q40219ClientConfig")

local this
local subIDs = Q40219ClientConfig.SubIDs
local datas = Q40219ClientConfig.Datas
local npcs = Q40219ClientConfig.Npcs
local points = Q40219ClientConfig.Points

function Q4021901_TriggerIn:OnPostDataPrepare()
    print("Q4021901_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q4021901_TriggerIn:OnPostComponentPrepare()
    print("Q4021901_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40219)
end

function Q4021901_TriggerIn:TriggerIn()
    print("Q4021901_TriggerIn - TriggerIn")
    actorMgr:GetActor("40219"):TransmitPlayerByQuestId(4021901, 1, nil, nil, nil)
    this:DestroySelf()
end

function Q4021901_TriggerIn:PreTriggerIn()
    print("Q4021901_TriggerIn - PreTriggerIn")
end

function Q4021901_TriggerIn:LightUpTriggerIn()
    print("Q4021901_TriggerIn - LightUpTriggerIn")
end

function Q4021901_TriggerIn:TriggerOut()
    print("Q4021901_TriggerIn - TriggerOut")
end

return Q4021901_TriggerIn
