require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70524Trigger = class("Q70524Trigger", GadgetActorProxy)
Q70524Trigger.defaultAlias = "Q70524Trigger"
local Q70524ClientConfig = require("Quest/Client/Q70524ClientConfig")

local this
local subIDs = Q70524ClientConfig.SubIDs
local npcs = Q70524ClientConfig.Npcs
local datas = Q70524ClientConfig.Datas

function Q70524Trigger:OnPostDataPrepare()
    print("[MainId: 70524][Trigger: Q70524Trigger] OnPostDataPrepare")
    this = self
end

function Q70524Trigger:OnPostComponentPrepare()
    print("[MainId: 70524][Trigger: Q70524Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 10, 25, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q70524Trigger:TriggerIn()
    print("[MainId: 70524][Trigger: Q70524Trigger] TriggerIn")
    actorMgr:GetActor("70524"):CallDelay(2, function(arg1)
        actorMgr:GetActor("70524"):NarratorOnlyTaskByData(datas.Narrator1, nil, 70524)
    end)
end

function Q70524Trigger:TriggerOut()
    print("[MainId: 70524][Trigger: Q70524Trigger] TriggerOut")
    local actor = actorMgr:GetActor("70524")
    actor:ClearNarratorTask()
    actor:StopNarrator()
    this:DestroySelf()
end

return Q70524Trigger
