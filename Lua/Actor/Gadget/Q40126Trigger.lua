require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40126Trigger = class("Q40126Trigger", GadgetActorProxy)
Q40126Trigger.defaultAlias = "Q40126Trigger"
local Q40126ClientConfig = require("Quest/Client/Q40126ClientConfig")

local this
local subIDs = Q40126ClientConfig.SubIDs
local npcs = Q40126ClientConfig.Npcs
local points = Q40126ClientConfig.Points
local datas = Q40126ClientConfig.Datas

function Q40126Trigger:OnPostDataPrepare()
    print("[MainId: 40126][Trigger: Q40126Trigger] OnPostDataPrepare")
    this = self
end

function Q40126Trigger:OnPostComponentPrepare()
    print("[MainId: 40126][Trigger: Q40126Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(250, 80, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40126Trigger:TriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger] TriggerIn")
    actorMgr:GetActor("40126"):NarratorOnlyTaskByData(datas.NarratorWithId_01)
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 4012615)
end

function Q40126Trigger:PreTriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger] PreTriggerIn")
end

function Q40126Trigger:LightUpTriggerIn()
    print("[MainId: 40126][Trigger: Q40126Trigger] LightUpTriggerIn")
end

function Q40126Trigger:TriggerOut()
    print("[MainId: 40126][Trigger: Q40126Trigger] TriggerOut")
end

return Q40126Trigger
