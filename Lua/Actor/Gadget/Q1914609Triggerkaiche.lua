require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914609Triggerkaiche = class("Q1914609Triggerkaiche", GadgetActorProxy)
Q1914609Triggerkaiche.defaultAlias = "Q1914609Triggerkaiche"
local Q19146ClientConfig = require("Quest/Client/Q19146ClientConfig")

local subIDs = Q19146ClientConfig.SubIDs
local npcs = Q19146ClientConfig.Npcs
local datas = Q19146ClientConfig.Datas

function Q1914609Triggerkaiche:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914609Triggerkaiche:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914609Triggerkaiche:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19146"):CallDelay(2, function(arg1)
        actorMgr:GetActor("19146"):ActionSafeCall(function(arg1)
            actorMgr:GetActor("19146"):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 19146)
        end)
    end)

    self:DestroySelf()
end

function Q1914609Triggerkaiche:TriggerOut()
    print("TriggerOut")
end

return Q1914609Triggerkaiche
