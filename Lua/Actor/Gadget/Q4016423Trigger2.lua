require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016423Trigger2 = class("Q4016423Trigger2", GadgetActorProxy)
Q4016423Trigger2.defaultAlias = "Q4016423Trigger2"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016423Trigger2:OnPostDataPrepare()
    print("Q4016423Trigger2 - OnPostDataPrepare")
    this = self
end

function Q4016423Trigger2:OnPostComponentPrepare()
    print("Q4016423Trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016423Trigger2:TriggerIn()
    print("Q4016423Trigger2 - TriggerIn")
    actorMgr:GetActor("40164"):TransmitPlayerByQuestId(4016423, 2, nil, nil, nil)
    this:DestroySelf()
end

function Q4016423Trigger2:PreTriggerIn()
    print("Q4016423Trigger2 - PreTriggerIn")
end

function Q4016423Trigger2:LightUpTriggerIn()
    print("Q4016423Trigger2 - LightUpTriggerIn")
end

function Q4016423Trigger2:TriggerOut()
    print("Q4016423Trigger2 - TriggerOut")
end

return Q4016423Trigger2
