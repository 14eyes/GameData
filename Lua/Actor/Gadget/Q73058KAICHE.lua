require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73058KAICHE = class("Q73058KAICHE", GadgetActorProxy)
Q73058KAICHE.defaultAlias = "Q73058KAICHE"
local Q73058ClientConfig = require("Quest/Client/Q73058ClientConfig")

local subIDs = Q73058ClientConfig.SubIDs
local npcs = Q73058ClientConfig.Npcs
local datas = Q73058ClientConfig.Datas

function Q73058KAICHE:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73058KAICHE:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73058KAICHE:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73058"):NarratorOnlyTask(datas.NarratorTable, nil, "")
    self:DestroySelf()
end

function Q73058KAICHE:TriggerOut()
    print("TriggerOut")
end

return Q73058KAICHE
