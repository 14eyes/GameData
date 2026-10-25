require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74073Trigger = class("Q74073Trigger", GadgetActorProxy)
Q74073Trigger.defaultAlias = "Q74073Trigger"
local Q74073ClientConfig = require("Quest/Client/Q74073ClientConfig")

local this
local subIDs = Q74073ClientConfig.SubIDs
local npcs = Q74073ClientConfig.Npcs
local datas = Q74073ClientConfig.Datas

function Q74073Trigger:OnPostDataPrepare()
    print("[MainId: 74073][Trigger: Q74073Trigger] OnPostDataPrepare")
    this = self
end

function Q74073Trigger:OnPostComponentPrepare()
    print("[MainId: 74073][Trigger: Q74073Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 5, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74073Trigger:TriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger] TriggerIn")
    actorMgr:GetActor("74073"):NarratorOnlyTaskByData(datas.NarratorWithId1, function(arg1)
        local actor = actorMgr:GetActor("74073")
        actorUtils.FinishQuestID(false, 7407302)
        this:DestroySelf()
    end)
end

function Q74073Trigger:PreTriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger] PreTriggerIn")
end

function Q74073Trigger:LightUpTriggerIn()
    print("[MainId: 74073][Trigger: Q74073Trigger] LightUpTriggerIn")
end

function Q74073Trigger:TriggerOut()
    print("[MainId: 74073][Trigger: Q74073Trigger] TriggerOut")
end

return Q74073Trigger
