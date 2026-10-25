require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12041Trigger8 = class("Q12041Trigger8", GadgetActorProxy)
Q12041Trigger8.defaultAlias = "Q12041Trigger8"
local Q12041ClientConfig = require("Quest/Client/Q12041ClientConfig")

local subIDs = Q12041ClientConfig.SubIDs
local npcs = Q12041ClientConfig.Npcs
local datas = Q12041ClientConfig.Datas

function Q12041Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12041Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12041Trigger8:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("12041")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Shougun2_GuideA").pos, 0, 3, false, false)
    actor:FinishQuestID(false, 1204101)
    self:DestroySelf()
end

function Q12041Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q12041Trigger8
