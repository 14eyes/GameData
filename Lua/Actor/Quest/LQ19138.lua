require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19138 = class("Quest19138", QuestActorProxy)
Quest19138.defaultAlias = "Quest19138"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19138:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19138:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1913802"] = self.OnSubStart1913802,
        ["1913803"] = self.OnSubStart1913803,
        ["1913801"] = self.OnSubStart1913801
    }
end

function Quest19138:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1913802"] = self.OnSubFinish1913802,
        ["1913803"] = self.OnSubFinish1913803,
        ["1913801"] = self.OnSubFinish1913801
    }
end

function Quest19138:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19138:Start()
    print("Start")
end

function Quest19138:OnDestroy()
    print("OnDestroy")
end

function Quest19138:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19138:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19138:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2142Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
    self:UnCallFunc(self.knockdoor1913801)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19138:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19138:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19138:knockdoor1913801()
    print("knockdoor1913801")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, function(arg1)
        arg1:ShowBlackScreen(0.3, 2, 0.3, function()
            local actor = actorMgr:GetActor("19138")
            if actor ~= nil then
                if actor ~= actorMgr.dummyActor then
                    goto lbl_12
                end
            end

            do
                return
            end

            ::lbl_12::
            actor:CreateQuestNpcById(1913801, npcs.Coop_NingguangData.id, 1)
            actor:GetQuestNpcActor(npcs.Coop_NingguangData.alias):HideSelf()
            actor:RequestInteraction(npcs.Coop_NingguangData.alias)
        end, nil, nil, "", false, true)
    end, 19138)
end

function Quest19138:OnSubStart1913802(arg1)
    print("OnSubStart1913802")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
end

function Quest19138:OnSubFinish1913802(arg1)
    print("OnSubFinish1913802")
end

function Quest19138:OnSubStart1913803(arg1)
    print("OnSubStart1913803")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913801)
    self:UnCallFunc(self.knockdoor1913801)
    self:ClearNarratorTask()
    self:StopNarrator()
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 3)
end

function Quest19138:OnSubFinish1913803(arg1)
    print("OnSubFinish1913803")
end

function Quest19138:OnSubStart1913801(arg1)
    print("OnSubStart1913801")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913801)
    actorMgr:CreateActorWithPos("Q19138Trigger", "Actor/Gadget/Q19138Trigger", 70900002, 0, sceneData:GetDummyPoint(1057, "Q1913201Ningguang").pos, sceneData:GetDummyPoint(1057, "Q1913201Ningguang").rot, true, false, 1057)
end

function Quest19138:OnSubFinish1913801(arg1)
    print("OnSubFinish1913801")
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2142Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
    self:ActorDestroy("Q19138Trigger")
end

return Quest19138
