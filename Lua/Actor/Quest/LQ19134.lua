require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19134 = class("Quest19134", QuestActorProxy)
Quest19134.defaultAlias = "Quest19134"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19134:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19134:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1913401"] = self.OnSubStart1913401,
        ["1913402"] = self.OnSubStart1913402,
        ["1913403"] = self.OnSubStart1913403,
        ["1913404"] = self.OnSubStart1913404,
        ["1913405"] = self.OnSubStart1913405,
        ["1913406"] = self.OnSubStart1913406,
        ["1913407"] = self.OnSubStart1913407,
        ["1913408"] = self.OnSubStart1913408,
        ["1913409"] = self.OnSubStart1913409,
        ["1913410"] = self.OnSubStart1913410,
        ["1913411"] = self.OnSubStart1913411,
        ["1913412"] = self.OnSubStart1913412,
        ["1913413"] = self.OnSubStart1913413,
        ["1913414"] = self.OnSubStart1913414
    }
end

function Quest19134:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1913401"] = self.OnSubFinish1913401,
        ["1913402"] = self.OnSubFinish1913402,
        ["1913403"] = self.OnSubFinish1913403,
        ["1913404"] = self.OnSubFinish1913404,
        ["1913405"] = self.OnSubFinish1913405,
        ["1913406"] = self.OnSubFinish1913406,
        ["1913407"] = self.OnSubFinish1913407,
        ["1913408"] = self.OnSubFinish1913408,
        ["1913409"] = self.OnSubFinish1913409,
        ["1913410"] = self.OnSubFinish1913410,
        ["1913411"] = self.OnSubFinish1913411,
        ["1913412"] = self.OnSubFinish1913412,
        ["1913413"] = self.OnSubFinish1913413,
        ["1913414"] = self.OnSubFinish1913414
    }
end

function Quest19134:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19134:Start()
    print("Start")
end

function Quest19134:OnDestroy()
    print("OnDestroy")
end

function Quest19134:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19134:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19134:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangCustumeFloralData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12303Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12304Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12305Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12312Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12313Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12314Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2063Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2063Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1913401Trigger", 3, false)
    self:LightNotifyTo(npcs.Npc2070Data.alias, 0, true)
    self:ActorDestroy("Q1913408Trigger")
    self:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2142Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
    if self:IsPlayerSitOnChair(3, M.Pos(-559.9, 248.25, 448.22), 7) then
        self.uActor:PlayerStandFromChair(75)
    end
end

function Quest19134:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19134:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19134:OnSubStart1913401(arg1)
    print("OnSubStart1913401")
    self:CreateQuestNpc(arg1, npcs.Npc2143Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2142Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2140Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12303Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12304Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12305Data.id, 7)
    self:DailyNpcSafeHideSelf(npcs.Npc2063Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1913401Trigger", "Actor/Gadget/Q1913401Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913402_C1913401Ningguang").pos, sceneData:GetDummyPoint(3, "Q1913402_C1913401Ningguang").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc2143Data.alias):DoFreeStyle(1320, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2142Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2140Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12304Data.alias):EnableHeadCtrl(false)
end

function Quest19134:OnSubFinish1913401(arg1)
    print("OnSubFinish1913401")
    self:LightNotifyTo(npcs.Npc2063Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2070Data.alias, 1, true)
end

function Quest19134:OnSubStart1913402(arg1)
    print("OnSubStart1913402")
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913401)
    self:GetQuestNpcActor(npcs.Npc2143Data.alias):DoFreeStyle(1320, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2142Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2140Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc2070Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12304Data.alias):EnableHeadCtrl(false)
end

function Quest19134:OnSubFinish1913402(arg1)
    print("OnSubFinish1913402")
end

function Quest19134:OnSubStart1913403(arg1)
    print("OnSubStart1913403")
    self:CreateQuestNpc(arg1, npcs.Npc12312Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12313Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12314Data.id, 7)
end

function Quest19134:OnSubFinish1913403(arg1)
    print("OnSubFinish1913403")
end

function Quest19134:OnSubStart1913404(arg1)
    print("OnSubStart1913404")
end

function Quest19134:OnSubFinish1913404(arg1)
    print("OnSubFinish1913404")
end

function Quest19134:OnSubStart1913405(arg1)
    print("OnSubStart1913405")
end

function Quest19134:OnSubFinish1913405(arg1)
    print("OnSubFinish1913405")
end

function Quest19134:OnSubStart1913406(arg1)
    print("OnSubStart1913406")
    self:CreateQuestNpc(arg1, npcs.Coop_NingguangCustumeFloralData.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2070Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12304Data.alias):EnableHeadCtrl(false)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
end

function Quest19134:OnSubFinish1913406(arg1)
    print("OnSubFinish1913406")
end

function Quest19134:OnSubStart1913407(arg1)
    print("OnSubStart1913407")
    self:DailyNpcSafeHideSelf(npcs.Npc2070Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12304Data.alias):EnableHeadCtrl(false)
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2142Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
end

function Quest19134:OnSubFinish1913407(arg1)
    print("OnSubFinish1913407")
    self:GetQuestNpcActor(npcs.Npc12304Data.alias):EnableHeadCtrl(true)
    if self:IsPlayerSitOnChair(3, M.Pos(-559.9, 248.25, 448.22), 7) then
        self.uActor:PlayerStandFromChair(75)
    end

    self:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2142Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
end

function Quest19134:OnSubStart1913408(arg1)
    print("OnSubStart1913408")
    self:CreateQuestNpc(arg1, npcs.Coop_NingguangCustumeFloralData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2143Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2142Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2140Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12303Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12304Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12305Data.id, 7)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913402)
    actorMgr:CreateActorWithPos("Q1913408Trigger", "Actor/Gadget/Q1913408Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913402_C1913401Ningguang").pos, sceneData:GetDummyPoint(3, "Q1913402_C1913401Ningguang").rot, true, false, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc2070Data.alias, 1, false)
    self:GetQuestNpcActor(npcs.Npc12303Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12305Data.alias):SitOnChair(0)
end

function Quest19134:OnSubFinish1913408(arg1)
    print("OnSubFinish1913408")
    self:SafeDestroyQuestNpc(npcs.Npc12312Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12313Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12314Data.alias, 3)
end

function Quest19134:OnSubStart1913409(arg1)
    print("OnSubStart1913409")
end

function Quest19134:OnSubFinish1913409(arg1)
    print("OnSubFinish1913409")
end

function Quest19134:OnSubStart1913410(arg1)
    print("OnSubStart1913410")
end

function Quest19134:OnSubFinish1913410(arg1)
    print("OnSubFinish1913410")
end

function Quest19134:OnSubStart1913411(arg1)
    print("OnSubStart1913411")
end

function Quest19134:OnSubFinish1913411(arg1)
    print("OnSubFinish1913411")
end

function Quest19134:OnSubStart1913412(arg1)
    print("OnSubStart1913412")
    self:CreateQuestNpc(arg1, npcs.Npc12303Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12304Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12305Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12303Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12305Data.alias):SitOnChair(0)
    self:DailyNpcSafeHideSelf(npcs.Npc2070Data.alias, 1, true)
end

function Quest19134:OnSubFinish1913412(arg1)
    print("OnSubFinish1913412")
end

function Quest19134:OnSubStart1913413(arg1)
    print("OnSubStart1913413")
    self:RemoveCoopInteractionDataFromSubStartPoint(102701, 1913402)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913403)
    self:DailyNpcSafeHideSelf(npcs.Npc2070Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12303Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12305Data.alias):SitOnChair(0)
    self:DailyNpcSafeHideSelf(npcs.Npc2070Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc2143Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2142Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc2140Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
end

function Quest19134:OnSubFinish1913413(arg1)
    print("OnSubFinish1913413")
    self:SafeDestroyQuestNpc(npcs.Npc12303Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12304Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12305Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2070Data.alias, 0, true)
end

function Quest19134:OnSubStart1913414(arg1)
    print("OnSubStart1913414")
end

function Quest19134:OnSubFinish1913414(arg1)
    print("OnSubFinish1913414")
end

return Quest19134
