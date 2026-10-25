require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110060Trigger = class("Q7110060Trigger", GadgetActorProxy)
Q7110060Trigger.defaultAlias = "Q7110060Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110060Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110060Trigger] OnPostDataPrepare")
    this = self
end

function Q7110060Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110060Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110060Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110060Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110060)
    this:DestroySelf()
end

function Q7110060Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110060Trigger] PreTriggerIn")
end

function Q7110060Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110060Trigger] LightUpTriggerIn")
end

function Q7110060Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110060Trigger] TriggerOut")
end

return Q7110060Trigger
