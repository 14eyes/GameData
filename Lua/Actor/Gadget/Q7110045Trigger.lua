require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110045Trigger = class("Q7110045Trigger", GadgetActorProxy)
Q7110045Trigger.defaultAlias = "Q7110045Trigger"
local Q71100ClientConfig = require("Quest/Client/Q71100ClientConfig")

local this
local subIDs = Q71100ClientConfig.SubIDs
local npcs = Q71100ClientConfig.Npcs
local points = Q71100ClientConfig.Points
local datas = Q71100ClientConfig.Datas

function Q7110045Trigger:OnPostDataPrepare()
    print("[MainId: 71100][Trigger: Q7110045Trigger] OnPostDataPrepare")
    this = self
end

function Q7110045Trigger:OnPostComponentPrepare()
    print("[MainId: 71100][Trigger: Q7110045Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110045Trigger:TriggerIn()
    print("[MainId: 71100][Trigger: Q7110045Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110045)
    this:DestroySelf()
end

function Q7110045Trigger:PreTriggerIn()
    print("[MainId: 71100][Trigger: Q7110045Trigger] PreTriggerIn")
end

function Q7110045Trigger:LightUpTriggerIn()
    print("[MainId: 71100][Trigger: Q7110045Trigger] LightUpTriggerIn")
end

function Q7110045Trigger:TriggerOut()
    print("[MainId: 71100][Trigger: Q7110045Trigger] TriggerOut")
end

return Q7110045Trigger
