require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40035Trigger4 = class("Q40035Trigger4", GadgetActorProxy)
Q40035Trigger4.defaultAlias = "Q40035Trigger4"
local Q40035ClientConfig = require("Quest/Client/Q40035ClientConfig")

local subIDs = Q40035ClientConfig.SubIDs
local npcs = Q40035ClientConfig.Npcs
local datas = Q40035ClientConfig.Datas

function Q40035Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40035Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40035Trigger4:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40035")
    if actor:GetQuestVar(4003501, 1) == 0 then
        actor:NarratorOnlyTaskByData(datas.Narrator1, function(arg1)
            actorMgr:GetActor("40035"):SetQuestVar(4003501, 1, 1)
        end, 40035)
    end

    self:DestroySelf()
end

function Q40035Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q40035Trigger4
