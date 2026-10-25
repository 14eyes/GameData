require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010606_TriggerOut = class("Q4010606_TriggerOut", GadgetActorProxy)
Q4010606_TriggerOut.defaultAlias = "Q4010606_TriggerOut"
local Q40106ClientConfig = require("Quest/Client/Q40106ClientConfig")

local this
local subIDs = Q40106ClientConfig.SubIDs
local npcs = Q40106ClientConfig.Npcs
local points = Q40106ClientConfig.Points
local datas = Q40106ClientConfig.Datas

function Q4010606_TriggerOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010606_TriggerOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010606_TriggerOut:TriggerIn()
    print("TriggerIn")
end

function Q4010606_TriggerOut:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010606_TriggerOut:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010606_TriggerOut:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 4010606)
    this:DestroySelf()
end

return Q4010606_TriggerOut
