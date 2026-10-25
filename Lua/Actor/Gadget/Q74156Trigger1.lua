require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74156Trigger1 = class("Q74156Trigger1", GadgetActorProxy)
Q74156Trigger1.defaultAlias = "Q74156Trigger1"
local Q74156ClientConfig = require("Quest/Client/Q74156ClientConfig")

local this
local subIDs = Q74156ClientConfig.SubIDs
local npcs = Q74156ClientConfig.Npcs
local datas = Q74156ClientConfig.Datas

function Q74156Trigger1:OnPostDataPrepare()
    print("[MainId: 74156][Trigger: Q74156Trigger1] OnPostDataPrepare")
    this = self
end

function Q74156Trigger1:OnPostComponentPrepare()
    print("[MainId: 74156][Trigger: Q74156Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74156Trigger1:TriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger1] TriggerIn")
    actorMgr:GetActor("74156"):NarratorOnlyTaskByData(datas.Narrator_7415602, function(arg1)
        local actor = actorMgr:GetActor("74156")
        actorUtils.FinishQuestID(false, 7415605)
    end)
end

function Q74156Trigger1:PreTriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger1] PreTriggerIn")
end

function Q74156Trigger1:LightUpTriggerIn()
    print("[MainId: 74156][Trigger: Q74156Trigger1] LightUpTriggerIn")
end

function Q74156Trigger1:TriggerOut()
    print("[MainId: 74156][Trigger: Q74156Trigger1] TriggerOut")
end

return Q74156Trigger1
