require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19132 = class("Quest19132", QuestActorProxy)
Quest19132.defaultAlias = "Quest19132"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19132:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19132:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1913207"] = self.OnSubStart1913207,
        ["1913209"] = self.OnSubStart1913209,
        ["1913208"] = self.OnSubStart1913208,
        ["1913201"] = self.OnSubStart1913201,
        ["1913202"] = self.OnSubStart1913202,
        ["1913203"] = self.OnSubStart1913203,
        ["1913204"] = self.OnSubStart1913204,
        ["1913205"] = self.OnSubStart1913205,
        ["1913206"] = self.OnSubStart1913206
    }
end

function Quest19132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1913207"] = self.OnSubFinish1913207,
        ["1913209"] = self.OnSubFinish1913209,
        ["1913208"] = self.OnSubFinish1913208,
        ["1913201"] = self.OnSubFinish1913201,
        ["1913202"] = self.OnSubFinish1913202,
        ["1913203"] = self.OnSubFinish1913203,
        ["1913204"] = self.OnSubFinish1913204,
        ["1913205"] = self.OnSubFinish1913205,
        ["1913206"] = self.OnSubFinish1913206
    }
end

function Quest19132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19132:Start()
    print("Start")
end

function Quest19132:OnDestroy()
    print("OnDestroy")
end

function Quest19132:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19132:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19132:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangCustumeFloralData.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangCustumeFloralData.alias, 1034)
    self:SafeDestroyQuestNpc(npcs.Npc12310Data.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc12297Data.alias, 1034)
    self:SafeDestroyQuestNpc(npcs.Npc12311Data.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc2063Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2063Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2142Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
    if not self:IsPlayerSitOnChair(1057, M.Pos(2.09, -7.89, -21.79), 1) then
        if not self:IsPlayerSitOnChair(1057, M.Pos(-2.14, -7.89, -21.72), 1) then
            goto lbl_106
        end
    end

    self.uActor:PlayerStandFromChair(0)
    ::lbl_106::
    self:ActorDestroy("Q19132Trigger")
    self:UnCallFunc(self.knockdoor1913201)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19132:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19132:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19132:knockdoor1913201()
    print("knockdoor1913201")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, function(arg1)
        arg1:ShowBlackScreen(0.3, 2, 0.3, function()
            local actor = actorMgr:GetActor("19132")
            if actor ~= nil then
                if actor ~= actorMgr.dummyActor then
                    goto lbl_12
                end
            end

            do
                return
            end

            ::lbl_12::
            actor:CreateQuestNpcById(1913201, npcs.Coop_NingguangData.id, 1)
            actor:GetQuestNpcActor(npcs.Coop_NingguangData.alias):HideSelf()
            actor:RequestInteraction(npcs.Coop_NingguangData.alias)
        end, nil, nil, "", false, true)
    end, 19132)
end

function Quest19132:OnSubStart1913207(arg1)
    print("OnSubStart1913207")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
end

function Quest19132:OnSubFinish1913207(arg1)
    print("OnSubFinish1913207")
end

function Quest19132:OnSubStart1913209(arg1)
    print("OnSubStart1913209")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
end

function Quest19132:OnSubFinish1913209(arg1)
    print("OnSubFinish1913209")
end

function Quest19132:OnSubStart1913208(arg1)
    print("OnSubStart1913208")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:UnCallFunc(self.knockdoor1913201)
    self:ClearNarratorTask()
    self:StopNarrator()
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913201)
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 3)
end

function Quest19132:OnSubFinish1913208(arg1)
    print("OnSubFinish1913208")
end

function Quest19132:OnSubStart1913201(arg1)
    print("OnSubStart1913201")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19132Trigger", "Actor/Gadget/Q19132Trigger", 70900002, 0, sceneData:GetDummyPoint(1057, "Q1913201Ningguang").pos, sceneData:GetDummyPoint(1057, "Q1913201Ningguang").rot, true, false, 1057)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913201)
end

function Quest19132:OnSubFinish1913201(arg1)
    print("OnSubFinish1913201")
    self:ActorDestroy("Q19132Trigger")
end

function Quest19132:OnSubStart1913202(arg1)
    print("OnSubStart1913202")
    self:CreateQuestNpc(arg1, npcs.Coop_NingguangData.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913202)
end

function Quest19132:OnSubFinish1913202(arg1)
    print("OnSubFinish1913202")
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 1057)
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
end

function Quest19132:OnSubStart1913203(arg1)
    print("OnSubStart1913203")
    self:CreateQuestNpc(arg1, npcs.Npc12310Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
end

function Quest19132:OnSubFinish1913203(arg1)
    print("OnSubFinish1913203")
end

function Quest19132:OnSubStart1913204(arg1)
    print("OnSubStart1913204")
    self:CreateQuestNpc(arg1, npcs.Npc12311Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
end

function Quest19132:OnSubFinish1913204(arg1)
    print("OnSubFinish1913204")
end

function Quest19132:OnSubStart1913205(arg1)
    print("OnSubStart1913205")
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_NingguangCustumeFloralData.id, 1)
        arg1_2:RequestCoopInteractionFromSubStartPoint(102701, 1913203)
        arg1_2:RequestInteraction(npcs.Coop_NingguangCustumeFloralData.alias)
    end, nil, nil, "", false, true)
end

function Quest19132:OnSubFinish1913205(arg1)
    print("OnSubFinish1913205")
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangCustumeFloralData.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc12310Data.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc12311Data.alias, 1057)
end

function Quest19132:OnSubStart1913206(arg1)
    print("OnSubStart1913206")
    self:CreateQuestNpc(arg1, npcs.Npc12297Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc2063Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913204)
end

function Quest19132:OnSubFinish1913206(arg1)
    print("OnSubFinish1913206")
    self:LightNotifyTo(npcs.Npc2063Data.alias, 0, true)
end

return Quest19132
