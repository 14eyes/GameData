require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11200 = class("Quest11200", QuestActorProxy)
Quest11200.defaultAlias = "Quest11200"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest11200:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest11200:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1120001"] = self.OnSubStart1120001,
        ["1120002"] = self.OnSubStart1120002,
        ["1120003"] = self.OnSubStart1120003,
        ["1120004"] = self.OnSubStart1120004,
        ["1120019"] = self.OnSubStart1120019,
        ["1120005"] = self.OnSubStart1120005,
        ["1120006"] = self.OnSubStart1120006,
        ["1120016"] = self.OnSubStart1120016,
        ["1120007"] = self.OnSubStart1120007,
        ["1120008"] = self.OnSubStart1120008,
        ["1120017"] = self.OnSubStart1120017,
        ["1120015"] = self.OnSubStart1120015,
        ["1120098"] = self.OnSubStart1120098,
        ["1120009"] = self.OnSubStart1120009,
        ["1120096"] = self.OnSubStart1120096,
        ["1120097"] = self.OnSubStart1120097,
        ["1120010"] = self.OnSubStart1120010,
        ["1120011"] = self.OnSubStart1120011,
        ["1120012"] = self.OnSubStart1120012,
        ["1120013"] = self.OnSubStart1120013,
        ["1120018"] = self.OnSubStart1120018,
        ["1120014"] = self.OnSubStart1120014
    }
end

function Quest11200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1120001"] = self.OnSubFinish1120001,
        ["1120002"] = self.OnSubFinish1120002,
        ["1120003"] = self.OnSubFinish1120003,
        ["1120004"] = self.OnSubFinish1120004,
        ["1120019"] = self.OnSubFinish1120019,
        ["1120005"] = self.OnSubFinish1120005,
        ["1120006"] = self.OnSubFinish1120006,
        ["1120016"] = self.OnSubFinish1120016,
        ["1120007"] = self.OnSubFinish1120007,
        ["1120008"] = self.OnSubFinish1120008,
        ["1120017"] = self.OnSubFinish1120017,
        ["1120015"] = self.OnSubFinish1120015,
        ["1120098"] = self.OnSubFinish1120098,
        ["1120009"] = self.OnSubFinish1120009,
        ["1120096"] = self.OnSubFinish1120096,
        ["1120097"] = self.OnSubFinish1120097,
        ["1120010"] = self.OnSubFinish1120010,
        ["1120011"] = self.OnSubFinish1120011,
        ["1120012"] = self.OnSubFinish1120012,
        ["1120013"] = self.OnSubFinish1120013,
        ["1120018"] = self.OnSubFinish1120018,
        ["1120014"] = self.OnSubFinish1120014
    }
end

function Quest11200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1120001"] = self.OnSubFailed1120001,
        ["1120002"] = self.OnSubFailed1120002,
        ["1120003"] = self.OnSubFailed1120003,
        ["1120004"] = self.OnSubFailed1120004,
        ["1120019"] = self.OnSubFailed1120019,
        ["1120005"] = self.OnSubFailed1120005,
        ["1120006"] = self.OnSubFailed1120006,
        ["1120016"] = self.OnSubFailed1120016,
        ["1120007"] = self.OnSubFailed1120007,
        ["1120008"] = self.OnSubFailed1120008,
        ["1120017"] = self.OnSubFailed1120017,
        ["1120015"] = self.OnSubFailed1120015,
        ["1120098"] = self.OnSubFailed1120098,
        ["1120009"] = self.OnSubFailed1120009,
        ["1120096"] = self.OnSubFailed1120096,
        ["1120097"] = self.OnSubFailed1120097,
        ["1120010"] = self.OnSubFailed1120010,
        ["1120011"] = self.OnSubFailed1120011,
        ["1120012"] = self.OnSubFailed1120012,
        ["1120013"] = self.OnSubFailed1120013,
        ["1120018"] = self.OnSubFailed1120018,
        ["1120014"] = self.OnSubFailed1120014
    }
end

function Quest11200:Start()
    print("Start")
end

function Quest11200:OnDestroy()
    print("OnDestroy")
end

function Quest11200:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11200:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11200:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11200:StartTalk03()
    print("StartTalk03")
    self:CreateQuestNpcById(1120004, npcs.Npc10233Data.id, 0)
    self:RequestInteraction(npcs.Npc10233Data.alias)
end

function Quest11200:QiqiStandby()
    print("QiqiStandby")
    local questNpcActor = actorMgr:GetActor("11200"):GetQuestNpcActor(npcs.Npc10233Data.alias)
    questNpcActor:Standby()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = questNpcActor:GetPos()
    local tbl = {}
    tbl.x = avatarPos.x - pos.x
    tbl.y = avatarPos.y - pos.y
    tbl.z = avatarPos.z - pos.z
    self.CallDelay(self, 0, function()
        local questNpcActor = actorMgr:GetActor("11200"):GetQuestNpcActor(npcs.Npc10233Data.alias)
        questNpcActor.TurnTo(questNpcActor, tbl)
        self:CallDelay(0.5, function()
            questNpcActor:DoFreeStyleNoResetRoute(1200)
        end)
    end)
end

function Quest11200:Print()
    print("Print")
end

function Quest11200:Finish1120009()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120009)
    end
end

function Quest11200:Finish1120096()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120096)
    end
end

function Quest11200:Finish1120097()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120097)
    end
end

function Quest11200:Start06()
    print("Start06")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk03, nil, nil, "")
end

function Quest11200:QiqiWalkEnd()
    print("QiqiWalkEnd")
    local questNpcActor = actorMgr:GetActor("11200"):GetQuestNpcActor(npcs.Npc10233Data.alias)
    questNpcActor:Standby()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = questNpcActor:GetPos()
    local tbl = {}
    tbl.x = avatarPos.x - pos.x
    tbl.y = avatarPos.y - pos.y
    tbl.z = avatarPos.z - pos.z
    self.CallDelay(self, 0, function()
        local questNpcActor = actorMgr:GetActor("11200"):GetQuestNpcActor(npcs.Npc10233Data.alias)
        questNpcActor.TurnTo(questNpcActor, tbl)
        self:CallDelay(0.5, function()
            questNpcActor:DoFreeStyle(1230)
        end)
    end)
end

function Quest11200:Finish12()
    print("Finish12")
    local questNpcActor = actorMgr:GetActor("11200"):GetQuestNpcActor(npcs.Npc10233Data.alias)
    questNpcActor:Standby()
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1120012Qiqi1").rot))
    questNpcActor:DoFreeStyle(1190, true, nil, true, true)
end

function Quest11200:Finish17()
    print("Finish17")
    actorMgr:GetActor("11200"):GetQuestNpcActor(npcs.Npc10233Data.alias):TurnTo(sceneData:GetDummyPoint(3, "Q1120010Qiqi").rot)
end

function Quest11200:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11200:Failed16()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(true, 1120016)
    end
end

function Quest11200:Failed17()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(true, 1120017)
    end
end

function Quest11200:Failed09()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(true, 1120009)
    end
end

function Quest11200:Failed12()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(true, 1120012)
    end
end

function Quest11200:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("invoke1")
        self:FinishQuestID(false, 1120019)
    elseif arg1 == 2 then
        print("invoke2")
        self:FinishQuestID(false, 1120018)
    end
end

function Quest11200:OnSubStart1120001(arg1)
    print("OnSubStart1120001")
    self:CreateQuestNpc(arg1, npcs.Npc2027Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2028Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10294Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc2027Data.alias):DoFreeStyle(1120, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc2028Data.alias):DoFreeStyle(5030, true, 0, true, true)
    self:GetQuestNpcActor(npcs.Npc10294Data.alias):DoFreeStyle(1050, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DoFreeStyle(1230, true, nil, true, true)
    self:NotifyTo("Npc2068", 1, true)
end

function Quest11200:OnSubFinish1120001(arg1)
    print("OnSubFinish1120001")
    self:DestroyQuestNpcActor(npcs.Npc2027Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2028Data.alias, 0)
    self:PaimonVanish()
end

function Quest11200:OnSubFailed1120001(arg1)
    print("OnSubFailed1120001")
end

function Quest11200:OnSubStart1120002(arg1)
    print("OnSubStart1120002")
end

function Quest11200:OnSubFinish1120002(arg1)
    print("OnSubFinish1120002")
    self:DestroyQuestNpcActor(npcs.Npc10294Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc10233Data.alias, 3)
    self:PaimonVanish()
    self:NotifyTo("Npc2068", 0, true)
end

function Quest11200:OnSubFailed1120002(arg1)
    print("OnSubFailed1120002")
end

function Quest11200:OnSubStart1120003(arg1)
    print("OnSubStart1120003")
end

function Quest11200:OnSubFinish1120003(arg1)
    print("OnSubFinish1120003")
end

function Quest11200:OnSubFailed1120003(arg1)
    print("OnSubFailed1120003")
end

function Quest11200:OnSubStart1120004(arg1)
    print("OnSubStart1120004")
    actorMgr:CreateActorWithPos(datas.Q1120004Trigger_.alias, datas.Q1120004Trigger_.script, datas.Q1120004Trigger_.id, 0, datas.Q1120004Trigger_.point.pos, datas.Q1120004Trigger_.point.rot, true, false, 3)
end

function Quest11200:OnSubFinish1120004(arg1)
    local actor = actorMgr:GetActor(datas.Q1120004Trigger_.alias)
    local v = actorMgr:GetActor(datas.Q11200Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    if v ~= nil then
        v:DestroySelf()
    end

    self:PaimonVanish()
end

function Quest11200:OnSubFailed1120004(arg1)
    print("OnSubFailed1120004")
end

function Quest11200:OnSubStart1120019(arg1)
    print("OnSubStart1120019")
end

function Quest11200:OnSubFinish1120019(arg1)
    print("OnSubFinish1120019")
end

function Quest11200:OnSubFailed1120019(arg1)
    print("OnSubFailed1120019")
end

function Quest11200:OnSubStart1120005(arg1)
    print("OnSubStart1120005")
    self:NarratorOnlyTaskByData(datas.NarratorWithId3, nil, 0)
    self:DestroyQuestNpcActor(npcs.Npc10233Data.alias, 3)
end

function Quest11200:OnSubFinish1120005(arg1)
    print("OnSubFinish1120005")
end

function Quest11200:OnSubFailed1120005(arg1)
    print("OnSubFailed1120005")
end

function Quest11200:OnSubStart1120006(arg1)
    print("OnSubStart1120006")
    self:CallDelay(2, self.Start06)
end

function Quest11200:OnSubFinish1120006(arg1)
    print("OnSubFinish1120006")
    self:PaimonVanish()
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):BeFollowTaskByRoutePointsWithDiffLen(datas.RoutePointsData1120016, 20, 15, 80, self.QiqiWalkEnd, self.QiqiStandby, nil, self.QiqiStandby, nil, self.Failed16)
end

function Quest11200:OnSubFailed1120006(arg1)
    print("OnSubFailed1120006")
end

function Quest11200:OnSubStart1120016(arg1)
    print("OnSubStart1120016")
    actorMgr:CreateActorWithPos(datas.Q1120007Trigger_.alias, datas.Q1120007Trigger_.script, datas.Q1120007Trigger_.id, 0, datas.Q1120007Trigger_.point.pos, datas.Q1120007Trigger_.point.rot, true, false, 3)
end

function Quest11200:OnSubFinish1120016(arg1)
    print("OnSubFinish1120016")
    self:PaimonVanish()
end

function Quest11200:OnSubFailed1120016(arg1)
    print("OnSubFailed1120016")
end

function Quest11200:OnSubStart1120007(arg1)
    print("OnSubStart1120007")
end

function Quest11200:OnSubFinish1120007(arg1)
    print("OnSubFinish1120007")
    self:PaimonVanish()
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):BeFollowTaskByRoutePointsWithDiffLen(datas.RoutePointsData1120017, 20, 15, 80, self.QiqiWalkEnd, self.QiqiStandby, nil, self.QiqiStandby, nil, self.Failed17)
end

function Quest11200:OnSubFailed1120007(arg1)
    print("OnSubFailed1120007")
end

function Quest11200:OnSubStart1120008(arg1)
    print("OnSubStart1120008")
    actorMgr:DestroyEntityActor(datas.Q1120007Trigger_.alias, 3)
    actorMgr:CreateActorWithPos(datas.Q1120008Trigger_.alias, datas.Q1120008Trigger_.script, datas.Q1120008Trigger_.id, 0, datas.Q1120008Trigger_.point.pos, datas.Q1120008Trigger_.point.rot, true, false, 3)
end

function Quest11200:OnSubFinish1120008(arg1)
    print("OnSubFinish1120008")
end

function Quest11200:OnSubFailed1120008(arg1)
    print("OnSubFailed1120008")
end

function Quest11200:OnSubStart1120017(arg1)
    print("OnSubStart1120017")
    actorMgr:CreateActorWithPos(datas.Q1120017Trigger_.alias, datas.Q1120017Trigger_.script, datas.Q1120017Trigger_.id, 0, datas.Q1120017Trigger_.point.pos, datas.Q1120017Trigger_.point.rot, true, false, 3)
end

function Quest11200:OnSubFinish1120017(arg1)
    print("OnSubFinish1120017")
end

function Quest11200:OnSubFailed1120017(arg1)
    print("OnSubFailed1120017")
end

function Quest11200:OnSubStart1120015(arg1)
    print("OnSubStart1120015")
end

function Quest11200:OnSubFinish1120015(arg1)
    print("OnSubFinish1120015")
    self:PaimonVanish()
end

function Quest11200:OnSubFailed1120015(arg1)
    print("OnSubFailed1120015")
end

function Quest11200:OnSubStart1120098(arg1)
    print("OnSubStart1120098")
    actorMgr:CreateActorWithPos(datas.Q1120096Trigger_.alias, datas.Q1120096Trigger_.script, datas.Q1120096Trigger_.id, 0, datas.Q1120096Trigger_.point.pos, datas.Q1120096Trigger_.point.rot, true, false, 3)
end

function Quest11200:OnSubFinish1120098(arg1)
    print("OnSubFinish1120098")
end

function Quest11200:OnSubFailed1120098(arg1)
    print("OnSubFailed1120098")
end

function Quest11200:OnSubStart1120009(arg1)
    print("OnSubStart1120009")
    actorMgr:CreateActorWithPos(datas.Q1120009Trigger_.alias, "Actor/Gadget/Q1120009Trigger", datas.Q1120009Trigger_.id, 0, datas.Q1120009Trigger_.point.pos, datas.Q1120009Trigger_.point.rot, true, false)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):BeFollowTaskByRoutePointsWithDiffLen(datas.RoutePointsData1120009, 20, 15, 80, self.Finish1120009, self.QiqiStandby, nil, self.QiqiStandby, nil, self.Failed09)
end

function Quest11200:OnSubFinish1120009(arg1)
    print("OnSubFinish1120009")
end

function Quest11200:OnSubFailed1120009(arg1)
    print("OnSubFailed1120009")
end

function Quest11200:OnSubStart1120096(arg1)
    print("OnSubStart1120096")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):WalkToRouteTask(datas.RoutePointsData1120096, self.Finish1120096)
    self:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 0)
end

function Quest11200:OnSubFinish1120096(arg1)
    print("OnSubFinish1120096")
end

function Quest11200:OnSubFailed1120096(arg1)
    print("OnSubFailed1120096")
end

function Quest11200:OnSubStart1120097(arg1)
    print("OnSubStart1120097")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):RunToRouteTask(datas.RoutePointsData1120097, self.Finish1120097)
end

function Quest11200:OnSubFinish1120097(arg1)
    print("OnSubFinish1120097")
end

function Quest11200:OnSubFailed1120097(arg1)
    print("OnSubFailed1120097")
end

function Quest11200:OnSubStart1120010(arg1)
    print("OnSubStart1120010")
end

function Quest11200:OnSubFinish1120010(arg1)
    print("OnSubFinish1120010")
    self:PaimonVanish()
end

function Quest11200:OnSubFailed1120010(arg1)
    print("OnSubFailed1120010")
end

function Quest11200:OnSubStart1120011(arg1)
    print("OnSubStart1120011")
end

function Quest11200:OnSubFinish1120011(arg1)
    print("OnSubFinish1120011")
end

function Quest11200:OnSubFailed1120011(arg1)
    print("OnSubFailed1120011")
end

function Quest11200:OnSubStart1120012(arg1)
    print("OnSubStart1120012")
    actorMgr:CreateActorWithPos(datas.Q1120012Trigger_.alias, datas.Q1120012Trigger_.script, datas.Q1120012Trigger_.id, 0, datas.Q1120012Trigger_.point.pos, datas.Q1120012Trigger_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):BeFollowTaskByRoutePointsWithDiffLen(datas.RoutePointsData1120012, 20, 15, 80, self.Finish12, nil, nil, self.QiqiStandby)
end

function Quest11200:OnSubFinish1120012(arg1)
    print("OnSubFinish1120012")
end

function Quest11200:OnSubFailed1120012(arg1)
    print("OnSubFailed1120012")
end

function Quest11200:OnSubStart1120013(arg1)
    print("OnSubStart1120013")
    self:RequestInteraction(npcs.Npc10233Data.alias)
    actorMgr:DestroyEntityActor(datas.Q1120096Trigger_.alias, 3, false)
end

function Quest11200:OnSubFinish1120013(arg1)
    print("OnSubFinish1120013")
    self:DestroyQuestNpcActor(npcs.Npc2027Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2028Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10233Data.alias, 3)
    self:FinishQuestID(false, 1120018)
    self:PaimonVanish()
end

function Quest11200:OnSubFailed1120013(arg1)
    print("OnSubFailed1120013")
end

function Quest11200:OnSubStart1120018(arg1)
    print("OnSubStart1120018")
end

function Quest11200:OnSubFinish1120018(arg1)
    print("OnSubFinish1120018")
end

function Quest11200:OnSubFailed1120018(arg1)
    print("OnSubFailed1120018")
end

function Quest11200:OnSubStart1120014(arg1)
    print("OnSubStart1120014")
end

function Quest11200:OnSubFinish1120014(arg1)
    print("OnSubFinish1120014")
    self:PaimonVanish()
end

function Quest11200:OnSubFailed1120014(arg1)
    print("OnSubFailed1120014")
end

return Quest11200
