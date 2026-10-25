require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70024Trigger = class("Q70024Trigger", GadgetActorProxy)
Q70024Trigger.defaultAlias = "Q70024Trigger"
local Q70024ClientConfig = require("Quest/Client/Q70024ClientConfig")

local mainID = Q70024ClientConfig.MainID
local actorAlias = Q70024ClientConfig.ActorAlias
local subIDs = Q70024ClientConfig.SubIDs
local npcs = Q70024ClientConfig.Npcs
local datas = Q70024ClientConfig.Datas

function Q70024Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70024Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70024Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:FinishQuestID(false, 7002402)
    actor:NarratorOnlyTaskByData(datas.NarratorTable)
    self:DestroySelf()
end

function Q70024Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70024Trigger
