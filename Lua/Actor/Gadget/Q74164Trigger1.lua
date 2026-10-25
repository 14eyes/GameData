require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74164Trigger1 = class("Q74164Trigger1", GadgetActorProxy)
Q74164Trigger1.defaultAlias = "Q74164Trigger1"
local Q74164ClientConfig = require("Quest/Client/Q74164ClientConfig")

local this
local subIDs = Q74164ClientConfig.SubIDs
local npcs = Q74164ClientConfig.Npcs
local datas = Q74164ClientConfig.Datas

function Q74164Trigger1:OnPostDataPrepare()
    print("[MainId: 74164][Trigger: Q74164Trigger1] OnPostDataPrepare")
    this = self
end

function Q74164Trigger1:OnPostComponentPrepare()
    print("[MainId: 74164][Trigger: Q74164Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(220, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74164Trigger1:TriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("74164")
    local questVar = actor:GetQuestVar(7416405, 1)
    print("LocalVar")
    if questVar == 0 then
        actor:NarratorOnlyTaskByData(datas.Narrator_7416402, function(arg1)
            actorMgr:GetActor("74164"):CallDelayByQuest("1", 2, function(arg1)
                actorMgr:GetActor("74164"):NarratorOnlyTaskByData(datas.Narrator_7416403, function(arg1)
                    actorMgr:GetActor("74164"):SetQuestVarByMainId(1, 3)
                    this:DestroySelf()
                end)
            end)
        end)
    end
end

function Q74164Trigger1:PreTriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger1] PreTriggerIn")
end

function Q74164Trigger1:LightUpTriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger1] LightUpTriggerIn")
end

function Q74164Trigger1:TriggerOut()
    print("[MainId: 74164][Trigger: Q74164Trigger1] TriggerOut")
end

return Q74164Trigger1
