require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010705Trigger = class("Q4010705Trigger", GadgetActorProxy)
Q4010705Trigger.defaultAlias = "Q4010705Trigger"
local Q40107ClientConfig = require("Quest/Client/Q40107ClientConfig")

local this
local subIDs = Q40107ClientConfig.SubIDs
local npcs = Q40107ClientConfig.Npcs
local points = Q40107ClientConfig.Points
local datas = Q40107ClientConfig.Datas

function Q4010705Trigger:OnPostDataPrepare()
    print("[MainId: 40107][Trigger: Q4010705Trigger] OnPostDataPrepare")
    this = self
end

function Q4010705Trigger:OnPostComponentPrepare()
    print("[MainId: 40107][Trigger: Q4010705Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010705Trigger:TriggerIn()
    print("[MainId: 40107][Trigger: Q4010705Trigger] TriggerIn")
    local actor = actorMgr:GetActor("40107")
    actor:ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 0, false, true)
    actor:CallDelay(1, function(arg1)
        actorUtils.FinishQuestID(false, 4010705)
        this:DestroySelf()
    end)
end

function Q4010705Trigger:PreTriggerIn()
    print("[MainId: 40107][Trigger: Q4010705Trigger] PreTriggerIn")
end

function Q4010705Trigger:LightUpTriggerIn()
    print("[MainId: 40107][Trigger: Q4010705Trigger] LightUpTriggerIn")
end

function Q4010705Trigger:TriggerOut()
    print("[MainId: 40107][Trigger: Q4010705Trigger] TriggerOut")
end

return Q4010705Trigger
