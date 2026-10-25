require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914402TriggerRefuseIn = class("Q1914402TriggerRefuseIn", GadgetActorProxy)
Q1914402TriggerRefuseIn.defaultAlias = "Q1914402TriggerRefuseIn"
local Q19144ClientConfig = require("Quest/Client/Q19144ClientConfig")

local subIDs = Q19144ClientConfig.SubIDs
local npcs = Q19144ClientConfig.Npcs
local datas = Q19144ClientConfig.Datas

function Q1914402TriggerRefuseIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914402TriggerRefuseIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(11.5, 8.92, 2.69, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914402TriggerRefuseIn:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19144")
    actor:EnablePlayerInput(false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId1, function(arg1)
        actorMgr:GetActor("19144"):TransmitPlayerByQuestId(1914402, 1, function(arg1)
            actorMgr:GetActor("19144"):EnablePlayerInput(true)
        end)
    end, 19144)

    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(1066, "Q1914402_C1914402_N1038").pos, 0.7, 4.5, true, false)
    actor:CallDelay(5, function(arg1)
        actorUtils.FinishQuestID(false, 1914409)
    end)
end

function Q1914402TriggerRefuseIn:TriggerOut()
    print("TriggerOut")
end

return Q1914402TriggerRefuseIn
