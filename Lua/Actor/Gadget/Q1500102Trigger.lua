require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500102Trigger = class("Q1500102Trigger", GadgetActorProxy)
Q1500102Trigger.defaultAlias = "Q1500102Trigger"
local Q15001ClientConfig = require("Quest/Client/Q15001ClientConfig")

local this
local subIDs = Q15001ClientConfig.SubIDs
local npcs = Q15001ClientConfig.Npcs
local points = Q15001ClientConfig.Points
local datas = Q15001ClientConfig.Datas

function Q1500102Trigger:OnPostDataPrepare()
    print("[MainId: 15001][Trigger: Q1500102Trigger] OnPostDataPrepare")
    this = self
end

function Q1500102Trigger:OnPostComponentPrepare()
    print("[MainId: 15001][Trigger: Q1500102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15001)
end

function Q1500102Trigger:TriggerIn()
    print("[MainId: 15001][Trigger: Q1500102Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1500102)
    this:DestroySelf()
end

function Q1500102Trigger:PreTriggerIn()
    print("[MainId: 15001][Trigger: Q1500102Trigger] PreTriggerIn")
end

function Q1500102Trigger:LightUpTriggerIn()
    print("[MainId: 15001][Trigger: Q1500102Trigger] LightUpTriggerIn")
end

function Q1500102Trigger:TriggerOut()
    print("[MainId: 15001][Trigger: Q1500102Trigger] TriggerOut")
end

return Q1500102Trigger
