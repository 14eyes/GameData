require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110732TriggerFinish = class("Q7110732TriggerFinish", GadgetActorProxy)
Q7110732TriggerFinish.defaultAlias = "Q7110732TriggerFinish"
local Q71107ClientConfig = require("Quest/Client/Q71107ClientConfig")

local this
local subIDs = Q71107ClientConfig.SubIDs
local npcs = Q71107ClientConfig.Npcs
local points = Q71107ClientConfig.Points
local datas = Q71107ClientConfig.Datas

function Q7110732TriggerFinish:OnPostDataPrepare()
    print("[MainId: 71107][Trigger: Q7110732TriggerFinish] OnPostDataPrepare")
    this = self
end

function Q7110732TriggerFinish:OnPostComponentPrepare()
    print("[MainId: 71107][Trigger: Q7110732TriggerFinish] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110732TriggerFinish:TriggerIn()
    print("[MainId: 71107][Trigger: Q7110732TriggerFinish] TriggerIn")
    actorUtils.FinishQuestID(false, 7110732)
    this:DestroySelf()
end

function Q7110732TriggerFinish:PreTriggerIn()
    print("[MainId: 71107][Trigger: Q7110732TriggerFinish] PreTriggerIn")
end

function Q7110732TriggerFinish:LightUpTriggerIn()
    print("[MainId: 71107][Trigger: Q7110732TriggerFinish] LightUpTriggerIn")
end

function Q7110732TriggerFinish:TriggerOut()
    print("[MainId: 71107][Trigger: Q7110732TriggerFinish] TriggerOut")
end

return Q7110732TriggerFinish
