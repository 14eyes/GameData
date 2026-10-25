require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111602Trigger = class("Q7111602Trigger", GadgetActorProxy)
Q7111602Trigger.defaultAlias = "Q7111602Trigger"
local Q71116ClientConfig = require("Quest/Client/Q71116ClientConfig")

local this
local subIDs = Q71116ClientConfig.SubIDs
local npcs = Q71116ClientConfig.Npcs
local points = Q71116ClientConfig.Points
local datas = Q71116ClientConfig.Datas

function Q7111602Trigger:OnPostDataPrepare()
    print("[MainId: 71116][Trigger: Q7111602Trigger] OnPostDataPrepare")
    this = self
end

function Q7111602Trigger:OnPostComponentPrepare()
    print("[MainId: 71116][Trigger: Q7111602Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7111602Trigger:TriggerIn()
    print("[MainId: 71116][Trigger: Q7111602Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7111603)
    this:DestroySelf()
end

function Q7111602Trigger:PreTriggerIn()
    print("[MainId: 71116][Trigger: Q7111602Trigger] PreTriggerIn")
end

function Q7111602Trigger:LightUpTriggerIn()
    print("[MainId: 71116][Trigger: Q7111602Trigger] LightUpTriggerIn")
end

function Q7111602Trigger:TriggerOut()
    print("[MainId: 71116][Trigger: Q7111602Trigger] TriggerOut")
end

return Q7111602Trigger
