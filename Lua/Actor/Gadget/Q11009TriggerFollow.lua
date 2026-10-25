require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11009TriggerFollow = class("Q11009TriggerFollow", GadgetActorProxy)
Q11009TriggerFollow.defaultAlias = "Q11009TriggerFollow"
local Q11009ClientConfig = require("Quest/Client/Q11009ClientConfig")

local subIDs = Q11009ClientConfig.SubIDs
local npcs = Q11009ClientConfig.Npcs
local datas = Q11009ClientConfig.Datas

function Q11009TriggerFollow:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11009TriggerFollow:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11009TriggerFollow:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("11009")
    actor:FinishQuestID(false, 1100905)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId1)
    self:DestroySelf()
end

function Q11009TriggerFollow:TriggerOut()
    print("TriggerOut")
end

return Q11009TriggerFollow
