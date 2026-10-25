require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4014107Trigger = class("Q4014107Trigger", GadgetActorProxy)
Q4014107Trigger.defaultAlias = "Q4014107Trigger"
local Q40141ClientConfig = require("Quest/Client/Q40141ClientConfig")

local this
local subIDs = Q40141ClientConfig.SubIDs
local npcs = Q40141ClientConfig.Npcs
local points = Q40141ClientConfig.Points
local datas = Q40141ClientConfig.Datas

function Q4014107Trigger:OnPostDataPrepare()
    print("[MainId: 40141][Trigger: Q4014107Trigger] OnPostDataPrepare")
    this = self
end

function Q4014107Trigger:OnPostComponentPrepare()
    print("[MainId: 40141][Trigger: Q4014107Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4014107Trigger:TriggerIn()
    print("[MainId: 40141][Trigger: Q4014107Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 4014107)
    this:DestroySelf()
end

function Q4014107Trigger:PreTriggerIn()
    print("[MainId: 40141][Trigger: Q4014107Trigger] PreTriggerIn")
end

function Q4014107Trigger:LightUpTriggerIn()
    print("[MainId: 40141][Trigger: Q4014107Trigger] LightUpTriggerIn")
end

function Q4014107Trigger:TriggerOut()
    print("[MainId: 40141][Trigger: Q4014107Trigger] TriggerOut")
end

return Q4014107Trigger
