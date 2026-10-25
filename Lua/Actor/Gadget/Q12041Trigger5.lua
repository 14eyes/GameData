require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12041Trigger5 = class("Q12041Trigger5", GadgetActorProxy)
Q12041Trigger5.defaultAlias = "Q12041Trigger5"
local Q12041ClientConfig = require("Quest/Client/Q12041ClientConfig")

local subIDs = Q12041ClientConfig.SubIDs
local npcs = Q12041ClientConfig.Npcs
local datas = Q12041ClientConfig.Datas

function Q12041Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12041Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12041Trigger5:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12041")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q12041_Look1").pos, 0, 3, false, false)
    actor:FinishQuestID(false, 1204101)
    self:DestroySelf()
end

function Q12041Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q12041Trigger5
