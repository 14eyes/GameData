require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71815 = class("Quest71815", QuestActorProxy)
Quest71815.defaultAlias = "Quest71815"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71815:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71815:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181519"] = self.OnSubStart7181519,
        ["7181501"] = self.OnSubStart7181501,
        ["7181502"] = self.OnSubStart7181502,
        ["7181503"] = self.OnSubStart7181503,
        ["7181505"] = self.OnSubStart7181505,
        ["7181504"] = self.OnSubStart7181504,
        ["7181506"] = self.OnSubStart7181506,
        ["7181508"] = self.OnSubStart7181508,
        ["7181507"] = self.OnSubStart7181507,
        ["7181518"] = self.OnSubStart7181518,
        ["7181509"] = self.OnSubStart7181509,
        ["7181510"] = self.OnSubStart7181510,
        ["7181511"] = self.OnSubStart7181511,
        ["7181512"] = self.OnSubStart7181512,
        ["7181513"] = self.OnSubStart7181513,
        ["7181514"] = self.OnSubStart7181514,
        ["7181515"] = self.OnSubStart7181515,
        ["7181516"] = self.OnSubStart7181516,
        ["7181517"] = self.OnSubStart7181517,
        ["7181520"] = self.OnSubStart7181520,
        ["7181521"] = self.OnSubStart7181521,
        ["7181522"] = self.OnSubStart7181522,
        ["7181523"] = self.OnSubStart7181523
    }
end

function Quest71815:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181519"] = self.OnSubFinish7181519,
        ["7181501"] = self.OnSubFinish7181501,
        ["7181502"] = self.OnSubFinish7181502,
        ["7181503"] = self.OnSubFinish7181503,
        ["7181505"] = self.OnSubFinish7181505,
        ["7181504"] = self.OnSubFinish7181504,
        ["7181506"] = self.OnSubFinish7181506,
        ["7181508"] = self.OnSubFinish7181508,
        ["7181507"] = self.OnSubFinish7181507,
        ["7181518"] = self.OnSubFinish7181518,
        ["7181509"] = self.OnSubFinish7181509,
        ["7181510"] = self.OnSubFinish7181510,
        ["7181511"] = self.OnSubFinish7181511,
        ["7181512"] = self.OnSubFinish7181512,
        ["7181513"] = self.OnSubFinish7181513,
        ["7181514"] = self.OnSubFinish7181514,
        ["7181515"] = self.OnSubFinish7181515,
        ["7181516"] = self.OnSubFinish7181516,
        ["7181517"] = self.OnSubFinish7181517,
        ["7181520"] = self.OnSubFinish7181520,
        ["7181521"] = self.OnSubFinish7181521,
        ["7181522"] = self.OnSubFinish7181522,
        ["7181523"] = self.OnSubFinish7181523
    }
end

function Quest71815:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181519"] = self.OnSubFailed7181519,
        ["7181501"] = self.OnSubFailed7181501,
        ["7181502"] = self.OnSubFailed7181502,
        ["7181503"] = self.OnSubFailed7181503,
        ["7181505"] = self.OnSubFailed7181505,
        ["7181504"] = self.OnSubFailed7181504,
        ["7181506"] = self.OnSubFailed7181506,
        ["7181508"] = self.OnSubFailed7181508,
        ["7181507"] = self.OnSubFailed7181507,
        ["7181518"] = self.OnSubFailed7181518,
        ["7181509"] = self.OnSubFailed7181509,
        ["7181510"] = self.OnSubFailed7181510,
        ["7181511"] = self.OnSubFailed7181511,
        ["7181512"] = self.OnSubFailed7181512,
        ["7181513"] = self.OnSubFailed7181513,
        ["7181514"] = self.OnSubFailed7181514,
        ["7181515"] = self.OnSubFailed7181515,
        ["7181516"] = self.OnSubFailed7181516,
        ["7181517"] = self.OnSubFailed7181517,
        ["7181520"] = self.OnSubFailed7181520,
        ["7181521"] = self.OnSubFailed7181521,
        ["7181522"] = self.OnSubFailed7181522,
        ["7181523"] = self.OnSubFailed7181523
    }
end

function Quest71815:Start()
    print("Start")
end

function Quest71815:OnDestroy()
    print("OnDestroy")
end

function Quest71815:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71815:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71815:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc30039Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2410Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2135Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2302Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2310Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2205Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2305Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2309Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10368Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10369Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2306Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10370Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2308Data.alias, 3)
end

function Quest71815:CustmiseFunction() end

function Quest71815:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7181518 then
        self:FinishQuestID(false, 7181518)
        print("finishquest")
    end
end

function Quest71815:OnSubStart7181501(arg1)
    print("OnSubStart7181501")
    self:CreateQuestNpc(arg1, npcs.Npc30039Data.id, 1)
end

function Quest71815:OnSubFinish7181501(arg1)
    print("OnSubFinish7181501")
end

function Quest71815:OnSubFailed7181501(arg1)
    print("OnSubFailed7181501")
end

function Quest71815:OnSubStart7181502(arg1)
    print("OnSubStart7181502")
    self:CreateQuestNpc(arg1, npcs.Npc2410Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 2)
end

function Quest71815:OnSubFinish7181502(arg1)
    print("OnSubFinish7181502")
    self:SafeDestroyQuestNpc(npcs.Npc30039Data.alias, 3)
end

function Quest71815:OnSubFailed7181502(arg1)
    print("OnSubFailed7181502")
end

function Quest71815:OnSubStart7181503(arg1)
    print("OnSubStart7181503")
    self:CreateQuestNpc(arg1, npcs.Npc2135Data.id, 1)
end

function Quest71815:OnSubFinish7181503(arg1)
    print("OnSubFinish7181503")
    self:SafeDestroyQuestNpc(npcs.Npc2410Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
end

function Quest71815:OnSubFailed7181503(arg1)
    print("OnSubFailed7181503")
end

function Quest71815:OnSubStart7181505(arg1)
    print("OnSubStart7181505")
    self:CreateQuestNpc(arg1, npcs.Npc2310Data.id, 1)
end

function Quest71815:OnSubFinish7181505(arg1)
    print("OnSubFinish7181505")
    self:SafeDestroyQuestNpc(npcs.Npc2135Data.alias, 3)
end

function Quest71815:OnSubFailed7181505(arg1)
    print("OnSubFailed7181505")
end

function Quest71815:OnSubStart7181504(arg1)
    print("OnSubStart7181504")
    self:CreateQuestNpc(arg1, npcs.Npc2302Data.id, 1)
end

function Quest71815:OnSubFinish7181504(arg1)
    print("OnSubFinish7181504")
    self:SafeDestroyQuestNpc(npcs.Npc2310Data.alias, 3)
end

function Quest71815:OnSubFailed7181504(arg1)
    print("OnSubFailed7181504")
end

function Quest71815:OnSubStart7181506(arg1)
    print("OnSubStart7181506")
    self:CreateQuestNpc(arg1, npcs.Npc2205Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2305Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2309Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2308Data.id, 0)
end

function Quest71815:OnSubFinish7181506(arg1)
    print("OnSubFinish7181506")
    self:SafeDestroyQuestNpc(npcs.Npc2302Data.alias, 3)
end

function Quest71815:OnSubFailed7181506(arg1)
    print("OnSubFailed7181506")
end

function Quest71815:OnSubStart7181508(arg1)
    print("OnSubStart7181508")
end

function Quest71815:OnSubFinish7181508(arg1)
    print("OnSubFinish7181508")
    self:RequestInteraction(npcs.Npc2205Data.alias)
end

function Quest71815:OnSubFailed7181508(arg1)
    print("OnSubFailed7181508")
end

function Quest71815:OnSubStart7181507(arg1)
    print("OnSubStart7181507")
end

function Quest71815:OnSubFinish7181507(arg1)
    print("OnSubFinish7181507")
end

function Quest71815:OnSubFailed7181507(arg1)
    print("OnSubFailed7181507")
end

function Quest71815:OnSubStart7181509(arg1)
    print("OnSubStart7181509")
    self:CreateQuestNpc(arg1, npcs.Npc10368Data.id, 1)
end

function Quest71815:OnSubFinish7181509(arg1)
    print("OnSubFinish7181509")
    self:SafeDestroyQuestNpc(npcs.Npc10368Data.alias, 3)
end

function Quest71815:OnSubFailed7181509(arg1)
    print("OnSubFailed7181509")
end

function Quest71815:OnSubStart7181510(arg1)
    print("OnSubStart7181510")
    self:CreateQuestNpc(arg1, npcs.Npc10369Data.id, 1)
end

function Quest71815:OnSubFinish7181510(arg1)
    print("OnSubFinish7181510")
    self:SafeDestroyQuestNpc(npcs.Npc10369Data.alias, 3)
end

function Quest71815:OnSubFailed7181510(arg1)
    print("OnSubFailed7181510")
end

function Quest71815:OnSubStart7181511(arg1)
    print("OnSubStart7181511")
    self:CreateQuestNpc(arg1, npcs.Npc10370Data.id, 1)
end

function Quest71815:OnSubFinish7181511(arg1)
    print("OnSubFinish7181511")
    self:SafeDestroyQuestNpc(npcs.Npc10370Data.alias, 3)
end

function Quest71815:OnSubFailed7181511(arg1)
    print("OnSubFailed7181511")
end

function Quest71815:OnSubStart7181512(arg1)
    print("OnSubStart7181512")
end

function Quest71815:OnSubFinish7181512(arg1)
    print("OnSubFinish7181512")
end

function Quest71815:OnSubFailed7181512(arg1)
    print("OnSubFailed7181512")
end

function Quest71815:OnSubStart7181513(arg1)
    print("OnSubStart7181513")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc30039Data.id)
        arg1_2:GetQuestNpcActor(npcs.Npc30039Data.alias):Standby()
    end)
end

function Quest71815:OnSubFinish7181513(arg1)
    print("OnSubFinish7181513")
    self:SafeDestroyQuestNpc(npcs.Npc2205Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2305Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2309Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2308Data.alias, 3)
end

function Quest71815:OnSubFailed7181513(arg1)
    print("OnSubFailed7181513")
end

function Quest71815:OnSubStart7181514(arg1)
    print("OnSubStart7181514")
    self:GetQuestNpcActor(npcs.Npc30039Data.alias):WalkToRouteTask(datas.Wangya1, function(arg1)
        actorUtils.FinishQuestID(false, 7181514)
    end)
end

function Quest71815:OnSubFinish7181514(arg1)
    print("OnSubFinish7181514")
end

function Quest71815:OnSubFailed7181514(arg1)
    print("OnSubFailed7181514")
    self:GetQuestNpcActor(npcs.Npc30039Data.alias):Standby()
end

function Quest71815:OnSubStart7181515(arg1)
    print("OnSubStart7181515")
    self:GetQuestNpcActor(npcs.Npc30039Data.alias):Standby()
end

function Quest71815:OnSubFinish7181515(arg1)
    print("OnSubFinish7181515")
end

function Quest71815:OnSubFailed7181515(arg1)
    print("OnSubFailed7181515")
end

function Quest71815:OnSubStart7181516(arg1)
    print("OnSubStart7181516")
    self:GetQuestNpcActor(npcs.Npc30039Data.alias):WalkToRouteTask(datas.wangya2, function(arg1)
        actorUtils.FinishQuestID(false, 7181516)
    end)
end

function Quest71815:OnSubFinish7181516(arg1)
    print("OnSubFinish7181516")
end

function Quest71815:OnSubFailed7181516(arg1)
    print("OnSubFailed7181516")
    self:GetQuestNpcActor(npcs.Npc30039Data.alias):Standby()
end

function Quest71815:OnSubStart7181517(arg1)
    print("OnSubStart7181517")
end

function Quest71815:OnSubFinish7181517(arg1)
    print("OnSubFinish7181517")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc30039Data.alias, 3)
    end, nil, nil, "")
end

function Quest71815:OnSubFailed7181517(arg1)
    print("OnSubFailed7181517")
end

function Quest71815:OnSubStart7181518(arg1)
    print("OnSubStart7181518")
end

function Quest71815:OnSubFinish7181518(arg1)
    print("OnSubFinish7181518")
end

function Quest71815:OnSubFailed7181518(arg1)
    print("OnSubFailed7181518")
end

function Quest71815:OnSubStart7181519(arg1)
    print("OnSubStart7181519")
end

function Quest71815:OnSubFinish7181519(arg1)
    print("OnSubFinish7181519")
end

function Quest71815:OnSubFailed7181519(arg1)
    print("OnSubFailed7181519")
end

function Quest71815:OnSubStart7181520(arg1)
    print("OnSubStart7181520")
end

function Quest71815:OnSubFinish7181520(arg1)
    print("OnSubFinish7181520")
end

function Quest71815:OnSubFailed7181520(arg1)
    print("OnSubFailed7181520")
end

function Quest71815:OnSubStart7181521(arg1)
    print("OnSubStart7181521")
end

function Quest71815:OnSubFinish7181521(arg1)
    print("OnSubFinish7181521")
end

function Quest71815:OnSubFailed7181521(arg1)
    print("OnSubFailed7181521")
end

function Quest71815:OnSubStart7181522(arg1)
    print("OnSubStart7181522")
end

function Quest71815:OnSubFinish7181522(arg1)
    print("OnSubFinish7181522")
end

function Quest71815:OnSubFailed7181522(arg1)
    print("OnSubFailed7181522")
end

function Quest71815:OnSubStart7181523(arg1)
    print("OnSubStart7181523")
end

function Quest71815:OnSubFinish7181523(arg1)
    print("OnSubFinish7181523")
end

function Quest71815:OnSubFailed7181523(arg1)
    print("OnSubFailed7181523")
end

return Quest71815
