require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111502Trigger = class("Q7111502Trigger", GadgetActorProxy)
Q7111502Trigger.defaultAlias = "Q7111502Trigger"
local Q71115ClientConfig = require("Quest/Client/Q71115ClientConfig")

local this
local subIDs = Q71115ClientConfig.SubIDs
local npcs = Q71115ClientConfig.Npcs
local points = Q71115ClientConfig.Points
local datas = Q71115ClientConfig.Datas

function Q7111502Trigger:OnPostDataPrepare()
    print("[MainId: 71115][Trigger: Q7111502Trigger] OnPostDataPrepare")
    this = self
end

function Q7111502Trigger:OnPostComponentPrepare()
    print("[MainId: 71115][Trigger: Q7111502Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 15, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7111502Trigger:TriggerIn()
    print("[MainId: 71115][Trigger: Q7111502Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7111502)
    this:DestroySelf()
end

function Q7111502Trigger:PreTriggerIn()
    print("[MainId: 71115][Trigger: Q7111502Trigger] PreTriggerIn")
end

function Q7111502Trigger:LightUpTriggerIn()
    print("[MainId: 71115][Trigger: Q7111502Trigger] LightUpTriggerIn")
end

function Q7111502Trigger:TriggerOut()
    print("[MainId: 71115][Trigger: Q7111502Trigger] TriggerOut")
end

return Q7111502Trigger
