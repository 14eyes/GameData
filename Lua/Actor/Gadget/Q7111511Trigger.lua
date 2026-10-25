require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111511Trigger = class("Q7111511Trigger", GadgetActorProxy)
Q7111511Trigger.defaultAlias = "Q7111511Trigger"
local Q71115ClientConfig = require("Quest/Client/Q71115ClientConfig")

local this
local subIDs = Q71115ClientConfig.SubIDs
local npcs = Q71115ClientConfig.Npcs
local points = Q71115ClientConfig.Points
local datas = Q71115ClientConfig.Datas

function Q7111511Trigger:OnPostDataPrepare()
    print("[MainId: 71115][Trigger: Q7111511Trigger] OnPostDataPrepare")
    this = self
end

function Q7111511Trigger:OnPostComponentPrepare()
    print("[MainId: 71115][Trigger: Q7111511Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7111511Trigger:TriggerIn()
    print("[MainId: 71115][Trigger: Q7111511Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7111511)
    this:DestroySelf()
end

function Q7111511Trigger:PreTriggerIn()
    print("[MainId: 71115][Trigger: Q7111511Trigger] PreTriggerIn")
end

function Q7111511Trigger:LightUpTriggerIn()
    print("[MainId: 71115][Trigger: Q7111511Trigger] LightUpTriggerIn")
end

function Q7111511Trigger:TriggerOut()
    print("[MainId: 71115][Trigger: Q7111511Trigger] TriggerOut")
end

return Q7111511Trigger
