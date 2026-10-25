require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914403TriggerRefuse02 = class("Q1914403TriggerRefuse02", GadgetActorProxy)
Q1914403TriggerRefuse02.defaultAlias = "Q1914403TriggerRefuse02"
local Q19144ClientConfig = require("Quest/Client/Q19144ClientConfig")

local this
local subIDs = Q19144ClientConfig.SubIDs
local npcs = Q19144ClientConfig.Npcs
local datas = Q19144ClientConfig.Datas

function Q1914403TriggerRefuse02:OnPostDataPrepare()
    print("[MainId: 19144][Trigger: Q1914403TriggerRefuse02] OnPostDataPrepare")
    this = self
end

function Q1914403TriggerRefuse02:OnPostComponentPrepare()
    print("[MainId: 19144][Trigger: Q1914403TriggerRefuse02] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(11.72, 3.83, 2.69, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914403TriggerRefuse02:TriggerIn()
    print("[MainId: 19144][Trigger: Q1914403TriggerRefuse02] TriggerIn")
    actorMgr:GetActor("19144"):AfterMainPageActiveSafeCall(function(arg1)
        local actor = actorMgr:GetActor("19144")
        local v = actorMgr:GetActor("19144")
        v:EnablePlayerInput(false)
        v:NarratorOnlyTaskByData(datas.NarratorWithId1, function(arg1)
            local actor = actorMgr:GetActor("19144")
            if sceneData.currSceneID == 1066 then
                actorMgr:GetActor("19144"):TransmitPlayerByQuestId(1914402, 1, function(arg1)
                    local actor = actorMgr:GetActor("19144")
                    actorMgr:GetActor("19144"):EnablePlayerInput(true)
                end)
            else
                actorMgr:GetActor("19144"):EnablePlayerInput(true)
            end
        end, 19144)

        v:EnterSceneLookCamera(sceneData:GetDummyPoint(1066, "Q1914402_C1914402_N1038").pos, 0.7, 4.5, true, false)
        v:CallDelay(5, function(arg1)
            local actor = actorMgr:GetActor("19144")
            actorUtils.FinishQuestID(false, 1914409)
        end)
    end)
end

function Q1914403TriggerRefuse02:TriggerOut()
    print("[MainId: 19144][Trigger: Q1914403TriggerRefuse02] TriggerOut")
end

return Q1914403TriggerRefuse02
