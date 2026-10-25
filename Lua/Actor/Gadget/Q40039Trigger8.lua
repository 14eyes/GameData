require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40039Trigger8 = class("Q40039Trigger8", GadgetActorProxy)
Q40039Trigger8.defaultAlias = "Q40039Trigger8"
local Q40039ClientConfig = require("Quest/Client/Q40039ClientConfig")

local subIDs = Q40039ClientConfig.SubIDs
local npcs = Q40039ClientConfig.Npcs
local datas = Q40039ClientConfig.Datas

function Q40039Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40039Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40039Trigger8:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40039")
    actor:FinishQuestID(false, 4003918)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q4003909_311300038").pos, 2, 2, true, true)
    actor:NarratorOnlyTaskByData(datas.Narrator4, nil, 40039)
    actor:EnablePlayerInput(false)
    actor:CallDelay(2, function(arg1)
        actorMgr:GetActor("40039"):EnablePlayerInput(true)
    end)

    self:DestroySelf()
end

function Q40039Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q40039Trigger8
