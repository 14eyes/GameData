require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q20520Trigger2 = class("Q20520Trigger2", GadgetActorProxy)
Q20520Trigger2.defaultAlias = "Q20520Trigger2"
local Q20520ClientConfig = require("Quest/Client/Q20520ClientConfig")

local mainID = Q20520ClientConfig.MainID
local actorAlias = Q20520ClientConfig.ActorAlias
local subIDs = Q20520ClientConfig.SubIDs
local npcs = Q20520ClientConfig.Npcs
local datas = Q20520ClientConfig.Datas

function Q20520Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q20520Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q20520Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Q20520Trigger2:TriggerOut()
    print("TriggerOut")
    actorMgr:DestroyEntityActor(datas.Q20520Trigger2_.alias, 3, false)
end

return Q20520Trigger2
