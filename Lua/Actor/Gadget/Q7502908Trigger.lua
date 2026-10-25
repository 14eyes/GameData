require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502908Trigger = class("Q7502908Trigger", GadgetActorProxy)
Q7502908Trigger.defaultAlias = "Q7502908Trigger"
local Q75029ClientConfig = require("Quest/Client/Q75029ClientConfig")

local this
local subIDs = Q75029ClientConfig.SubIDs
local npcs = Q75029ClientConfig.Npcs
local datas = Q75029ClientConfig.Datas

function Q7502908Trigger:OnPostDataPrepare()
    print("[MainId: 75029][Trigger: Q7502908Trigger] OnPostDataPrepare")
    this = self
end

function Q7502908Trigger:OnPostComponentPrepare()
    print("[MainId: 75029][Trigger: Q7502908Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75029)
end

function Q7502908Trigger:TriggerIn()
    print("[MainId: 75029][Trigger: Q7502908Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7502908)
    this:DestroySelf()
end

function Q7502908Trigger:PreTriggerIn()
    print("[MainId: 75029][Trigger: Q7502908Trigger] PreTriggerIn")
end

function Q7502908Trigger:LightUpTriggerIn()
    print("[MainId: 75029][Trigger: Q7502908Trigger] LightUpTriggerIn")
end

function Q7502908Trigger:TriggerOut()
    print("[MainId: 75029][Trigger: Q7502908Trigger] TriggerOut")
end

return Q7502908Trigger
