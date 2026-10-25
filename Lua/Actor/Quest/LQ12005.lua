require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12005 = class("Quest12005", QuestActorProxy)
Quest12005.defaultAlias = "Quest12005"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1200501"] = self.OnSubStart1200501,
        ["1200502"] = self.OnSubStart1200502,
        ["1200503"] = self.OnSubStart1200503,
        ["1200504"] = self.OnSubStart1200504,
        ["1200505"] = self.OnSubStart1200505,
        ["1200506"] = self.OnSubStart1200506,
        ["1200507"] = self.OnSubStart1200507,
        ["1200517"] = self.OnSubStart1200517,
        ["1200509"] = self.OnSubStart1200509,
        ["1200510"] = self.OnSubStart1200510,
        ["1200511"] = self.OnSubStart1200511,
        ["1200514"] = self.OnSubStart1200514,
        ["1200518"] = self.OnSubStart1200518,
        ["1200512"] = self.OnSubStart1200512,
        ["1200515"] = self.OnSubStart1200515,
        ["1200516"] = self.OnSubStart1200516,
        ["1200513"] = self.OnSubStart1200513,
        ["1200508"] = self.OnSubStart1200508
    }
end

function Quest12005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1200501"] = self.OnSubFinish1200501,
        ["1200502"] = self.OnSubFinish1200502,
        ["1200503"] = self.OnSubFinish1200503,
        ["1200504"] = self.OnSubFinish1200504,
        ["1200505"] = self.OnSubFinish1200505,
        ["1200506"] = self.OnSubFinish1200506,
        ["1200507"] = self.OnSubFinish1200507,
        ["1200517"] = self.OnSubFinish1200517,
        ["1200509"] = self.OnSubFinish1200509,
        ["1200510"] = self.OnSubFinish1200510,
        ["1200511"] = self.OnSubFinish1200511,
        ["1200514"] = self.OnSubFinish1200514,
        ["1200518"] = self.OnSubFinish1200518,
        ["1200512"] = self.OnSubFinish1200512,
        ["1200515"] = self.OnSubFinish1200515,
        ["1200516"] = self.OnSubFinish1200516,
        ["1200513"] = self.OnSubFinish1200513,
        ["1200508"] = self.OnSubFinish1200508
    }
end

function Quest12005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1200501"] = self.OnSubFailed1200501,
        ["1200502"] = self.OnSubFailed1200502,
        ["1200503"] = self.OnSubFailed1200503,
        ["1200504"] = self.OnSubFailed1200504,
        ["1200505"] = self.OnSubFailed1200505,
        ["1200506"] = self.OnSubFailed1200506,
        ["1200507"] = self.OnSubFailed1200507,
        ["1200517"] = self.OnSubFailed1200517,
        ["1200509"] = self.OnSubFailed1200509,
        ["1200510"] = self.OnSubFailed1200510,
        ["1200511"] = self.OnSubFailed1200511,
        ["1200514"] = self.OnSubFailed1200514,
        ["1200518"] = self.OnSubFailed1200518,
        ["1200512"] = self.OnSubFailed1200512,
        ["1200515"] = self.OnSubFailed1200515,
        ["1200516"] = self.OnSubFailed1200516,
        ["1200513"] = self.OnSubFailed1200513,
        ["1200508"] = self.OnSubFailed1200508
    }
end

function Quest12005:Start()
    print("Start")
end

function Quest12005:OnDestroy()
    print("OnDestroy")
end

function Quest12005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12005:ClearCloth1()
    print("ClearCloth1")
    self:SafeDestroyQuestNpc(npcs.Npc1013DataPoster.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest12005:ClearWanguoMeet1()
    print("ClearWanguoMeet1")
    self:SafeDestroyQuestNpc(npcs.Npc3084DataWanguo.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013DataWanguo.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest12005:ClearRounin()
    print("ClearRounin")
    self:SafeDestroyQuestNpc(npcs.Npc12036Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc12131Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12132Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013DataCheckCart.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3084DataCart.alias, 3)
end

function Quest12005:ClearCartCheck()
    print("ClearCartCheck")
    self:SafeDestroyQuestNpc(npcs.Npc3084DataCart.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013DataCheckCart.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:LightNotifyTo("Npc3084", 0, true)
end

function Quest12005:ClearEnd()
    print("ClearEnd")
    self:SafeDestroyQuestNpc(npcs.Npc1013DataRest.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc3006Data.alias, 3)
end

function Quest12005:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1200518)
        end

        print("Talk Refresh SilkCart")
    end
end

function Quest12005:OnSubStart1200501(arg1)
    print("OnSubStart1200501")
    actorMgr:CreateActorWithPos(datas.Q12005TriggerCloth_.alias, datas.Q12005TriggerCloth_.script, datas.Q12005TriggerCloth_.id, 0, datas.Q12005TriggerCloth_.point.pos, datas.Q12005TriggerCloth_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
end

function Quest12005:OnSubFinish1200501(arg1)
    print("OnSubFinish1200501")
    local actor = actorMgr:GetActor(datas.Q12005TriggerCloth_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12005:OnSubFailed1200501(arg1)
    print("OnSubFailed1200501")
end

function Quest12005:OnSubStart1200502(arg1)
    print("OnSubStart1200502")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1013DataPoster.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1013DataPoster.id, 2)
        self:RequestInteraction("Npc1013")
    end, nil, questNpcCreateTask)
end

function Quest12005:OnSubFinish1200502(arg1)
    print("OnSubFinish1200502")
    self:ActionSafeCall(self.ClearCloth1)
end

function Quest12005:OnSubFailed1200502(arg1)
    print("OnSubFailed1200502")
end

function Quest12005:OnSubStart1200503(arg1)
    print("OnSubStart1200503")
    self:CreateQuestNpc(arg1, npcs.Npc3084DataWanguo.id, 3)
    actorMgr:CreateActorWithPos(datas.Q12005TriggerWanguoFake_.alias, datas.Q12005TriggerWanguoFake_.script, datas.Q12005TriggerWanguoFake_.id, 0, datas.Q12005TriggerWanguoFake_.point.pos, datas.Q12005TriggerWanguoFake_.point.rot, true, false, 3)
end

function Quest12005:OnSubFinish1200503(arg1)
    print("OnSubFinish1200503")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest12005:OnSubFailed1200503(arg1)
    print("OnSubFailed1200503")
    local actor = actorMgr:GetActor(datas.Q12005TriggerWanguoFake_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12005:OnSubStart1200504(arg1)
    print("OnSubStart1200504")
    actorMgr:CreateActorWithPos(datas.Q12005TriggerWanguoReal_.alias, datas.Q12005TriggerWanguoReal_.script, datas.Q12005TriggerWanguoReal_.id, 0, datas.Q12005TriggerWanguoReal_.point.pos, datas.Q12005TriggerWanguoReal_.point.rot, true, false, 3)
end

function Quest12005:OnSubFinish1200504(arg1)
    print("OnSubFinish1200504")
end

function Quest12005:OnSubFailed1200504(arg1)
    print("OnSubFailed1200504")
end

function Quest12005:OnSubStart1200505(arg1)
    print("OnSubStart1200505")
    actorMgr:CreateActorWithPos(datas.Q12005TriggerWanguoHide_.alias, datas.Q12005TriggerWanguoHide_.script, datas.Q12005TriggerWanguoHide_.id, 0, datas.Q12005TriggerWanguoHide_.point.pos, datas.Q12005TriggerWanguoHide_.point.rot, true, false, 3)
end

function Quest12005:OnSubFinish1200505(arg1)
    print("OnSubFinish1200505")
end

function Quest12005:OnSubFailed1200505(arg1)
    print("OnSubFailed1200505")
    local actor = actorMgr:GetActor(datas.Q12005TriggerWanguoHide_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12005:OnSubStart1200506(arg1)
    print("OnSubStart1200506")
    self:RequestInteraction("Npc3084")
end

function Quest12005:OnSubFinish1200506(arg1)
    print("OnSubFinish1200506")
    self:ActionSafeCall(self.ClearWanguoMeet1)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest12005:OnSubFailed1200506(arg1)
    print("OnSubFailed1200506")
end

function Quest12005:OnSubStart1200507(arg1)
    print("OnSubStart1200507")
    self:NotifyTo("Npc3084", 1, true)
end

function Quest12005:OnSubFinish1200507(arg1)
    print("OnSubFinish1200507")
end

function Quest12005:OnSubFailed1200507(arg1)
    print("OnSubFailed1200507")
end

function Quest12005:OnSubStart1200517(arg1)
    print("OnSubStart1200517")
    actorMgr:CreateActorWithPos(datas.Q12005TriggerSeek2_.alias, datas.Q12005TriggerSeek2_.script, datas.Q12005TriggerSeek2_.id, 0, datas.Q12005TriggerSeek2_.point.pos, datas.Q12005TriggerSeek2_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12036Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12131Data.id, 12)
    self:CreateQuestNpc(arg1, npcs.Npc12132Data.id, 13)
    self:GetQuestNpcActor(npcs.Npc12036Data.alias):DoFreeStyle(3, true, nil, true, true, false)
    self:NotifyTo("Npc3084", 1, true)
end

function Quest12005:OnSubFinish1200517(arg1)
    print("OnSubFinish1200517")
    local actor = actorMgr:GetActor(datas.Q12005TriggerSeek2_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12005:OnSubFailed1200517(arg1)
    print("OnSubFailed1200517")
end

function Quest12005:OnSubStart1200509(arg1)
    print("OnSubStart1200509")
    self:RequestInteraction("Npc12036")
    self:NotifyTo("Npc3084", 1, true)
end

function Quest12005:OnSubFinish1200509(arg1)
    print("OnSubFinish1200509")
    self:ActionSafeCall(self.ClearRounin)
end

function Quest12005:OnSubFailed1200509(arg1)
    print("OnSubFailed1200509")
end

function Quest12005:OnSubStart1200510(arg1)
    print("OnSubStart1200510")
    actorMgr:CreateActorWithPos(datas.Q12005TriggerBattleOut_.alias, datas.Q12005TriggerBattleOut_.script, datas.Q12005TriggerBattleOut_.id, 0, datas.Q12005TriggerBattleOut_.point.pos, datas.Q12005TriggerBattleOut_.point.rot, true, false, 3)
end

function Quest12005:OnSubFinish1200510(arg1)
    print("OnSubFinish1200510")
    local actor = actorMgr:GetActor(datas.Q12005TriggerBattleOut_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12005:OnSubFailed1200510(arg1)
    print("OnSubFailed1200510")
end

function Quest12005:OnSubStart1200511(arg1)
    print("OnSubStart1200511")
    self.NotifyTo(self, "Npc3084", 1, true)
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc3084DataCartCheck.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc3084DataCartCheck.id, 10)
        self:RequestInteraction("Npc3084")
    end, nil, questNpcCreateTask)
end

function Quest12005:OnSubFinish1200511(arg1)
    print("OnSubFinish1200511")
    self:ActionSafeCall(self.ClearCartCheck)
end

function Quest12005:OnSubFailed1200511(arg1)
    print("OnSubFailed1200511")
end

function Quest12005:OnSubStart1200514(arg1)
    print("OnSubStart1200514")
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q12005TriggerClothFinAdd_.alias, datas.Q12005TriggerClothFinAdd_.script, datas.Q12005TriggerClothFinAdd_.id, 0, datas.Q12005TriggerClothFinAdd_.point.pos, datas.Q12005TriggerClothFinAdd_.point.rot, true, false, 3)
end

function Quest12005:OnSubFinish1200514(arg1)
    print("OnSubFinish1200514")
    self:ActionSafeCall(self.ClearEnd)
end

function Quest12005:OnSubFailed1200514(arg1)
    print("OnSubFailed1200514")
end

function Quest12005:OnSubStart1200518(arg1)
    print("OnSubStart1200518")
end

function Quest12005:OnSubFinish1200518(arg1)
    print("OnSubFinish1200518")
end

function Quest12005:OnSubFailed1200518(arg1)
    print("OnSubFailed1200518")
end

function Quest12005:OnSubStart1200512(arg1)
    print("OnSubStart1200512")
end

function Quest12005:OnSubFinish1200512(arg1)
    print("OnSubFinish1200512")
end

function Quest12005:OnSubFailed1200512(arg1)
    print("OnSubFailed1200512")
end

function Quest12005:OnSubStart1200515(arg1)
    print("OnSubStart1200515")
    actorMgr:CreateActorWithPos(datas.Q12005TriggerRest_.alias, datas.Q12005TriggerRest_.script, datas.Q12005TriggerRest_.id, 0, datas.Q12005TriggerRest_.point.pos, datas.Q12005TriggerRest_.point.rot, true, false, 3)
end

function Quest12005:OnSubFinish1200515(arg1)
    print("OnSubFinish1200515")
end

function Quest12005:OnSubFailed1200515(arg1)
    print("OnSubFailed1200515")
end

function Quest12005:OnSubStart1200516(arg1)
    print("OnSubStart1200516")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1013DataRest.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1013DataRest.id, 9)
        self:RequestInteraction("Npc1013")
    end, nil, questNpcCreateTask)
end

function Quest12005:OnSubFinish1200516(arg1)
    print("OnSubFinish1200516")
end

function Quest12005:OnSubFailed1200516(arg1)
    print("OnSubFailed1200516")
end

function Quest12005:OnSubStart1200513(arg1)
    print("OnSubStart1200513")
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
end

function Quest12005:OnSubFinish1200513(arg1)
    print("OnSubFinish1200513")
end

function Quest12005:OnSubFailed1200513(arg1)
    print("OnSubFailed1200513")
end

function Quest12005:OnSubStart1200508(arg1)
    print("OnSubStart1200508")
end

function Quest12005:OnSubFinish1200508(arg1)
    print("OnSubFinish1200508")
end

function Quest12005:OnSubFailed1200508(arg1)
    print("OnSubFailed1200508")
end

return Quest12005
