require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72661 = class("Quest72661", QuestActorProxy)
Quest72661.defaultAlias = "Quest72661"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72661:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72661:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7266101"] = self.OnSubStart7266101,
        ["7266102"] = self.OnSubStart7266102,
        ["7266103"] = self.OnSubStart7266103,
        ["7266104"] = self.OnSubStart7266104,
        ["7266105"] = self.OnSubStart7266105,
        ["7266106"] = self.OnSubStart7266106,
        ["7266107"] = self.OnSubStart7266107,
        ["7266113"] = self.OnSubStart7266113,
        ["7266108"] = self.OnSubStart7266108,
        ["7266109"] = self.OnSubStart7266109,
        ["7266110"] = self.OnSubStart7266110,
        ["7266111"] = self.OnSubStart7266111,
        ["7266112"] = self.OnSubStart7266112
    }
end

function Quest72661:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7266101"] = self.OnSubFinish7266101,
        ["7266102"] = self.OnSubFinish7266102,
        ["7266103"] = self.OnSubFinish7266103,
        ["7266104"] = self.OnSubFinish7266104,
        ["7266105"] = self.OnSubFinish7266105,
        ["7266106"] = self.OnSubFinish7266106,
        ["7266107"] = self.OnSubFinish7266107,
        ["7266113"] = self.OnSubFinish7266113,
        ["7266108"] = self.OnSubFinish7266108,
        ["7266109"] = self.OnSubFinish7266109,
        ["7266110"] = self.OnSubFinish7266110,
        ["7266111"] = self.OnSubFinish7266111,
        ["7266112"] = self.OnSubFinish7266112
    }
end

function Quest72661:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7266101"] = self.OnSubFailed7266101,
        ["7266102"] = self.OnSubFailed7266102,
        ["7266103"] = self.OnSubFailed7266103,
        ["7266104"] = self.OnSubFailed7266104,
        ["7266105"] = self.OnSubFailed7266105,
        ["7266106"] = self.OnSubFailed7266106,
        ["7266107"] = self.OnSubFailed7266107,
        ["7266113"] = self.OnSubFailed7266113,
        ["7266108"] = self.OnSubFailed7266108,
        ["7266109"] = self.OnSubFailed7266109,
        ["7266110"] = self.OnSubFailed7266110,
        ["7266111"] = self.OnSubFailed7266111,
        ["7266112"] = self.OnSubFailed7266112
    }
end

function Quest72661:Start()
    print("Start")
end

function Quest72661:OnDestroy()
    print("OnDestroy")
end

function Quest72661:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72661:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72661:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1673Data.alias, 3)
    self:ExitTailMode()
    self:SafeDestroyQuestNpc(npcs.Npc3200Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12164Data.alias, 3)
end

function Quest72661:CheckDistance()
    if self:GetSubQuestState(7266107) == 2 then
        print("CheckDis")
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = self:GetQuestNpcActor(npcs.Npc12164Data.alias):GetPos()
        local dist = M.Dist(pos, avatarPos)
        print("NOW Distance is", dist)
        if 25 < dist then
            print("Narrator")
            self:NarratorOnlyTaskLegacy(datas.KaicheWarning)
            self:CallDelay(2, self.WarnCheck)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest72661:NormalCheck()
    self:CheckDistance()
end

function Quest72661:WarnCheck()
    print("WarnCheckDistance")
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetQuestNpcActor(npcs.Npc12164Data.alias):GetPos()
    local dist = M.Dist(pos, avatarPos)
    print("NOW Distance is", dist)
    if 30 < dist then
        self:ClearNarratorTask()
        self:StopNarrator()
        actorUtils.FinishQuestID(true, 7266107)
        print("72661 Follow Fail...")
    else
        self:CheckDistance()
    end
end

function Quest72661:OnSubStart7266101(arg1)
    print("OnSubStart7266101")
    self:CreateQuestNpc(arg1, npcs.Npc1673Data.id, 1)
end

function Quest72661:OnSubFinish7266101(arg1)
    print("OnSubFinish7266101")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1673Data.alias, 3)
    end)
end

function Quest72661:OnSubFailed7266101(arg1)
    print("OnSubFailed7266101")
end

function Quest72661:OnSubStart7266102(arg1)
    print("OnSubStart7266102")
    actorMgr:CreateActorWithPos("Q72661Trigger", "Actor/Gadget/Q72661Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72661_Kuangchang").pos, sceneData:GetDummyPoint(3, "Q72661_Kuangchang").rot, true, false, 3)
end

function Quest72661:OnSubFinish7266102(arg1)
    print("OnSubFinish7266102")
end

function Quest72661:OnSubFailed7266102(arg1)
    print("OnSubFailed7266102")
end

function Quest72661:OnSubStart7266103(arg1)
    print("OnSubStart7266103")
end

function Quest72661:OnSubFinish7266103(arg1)
    print("OnSubFinish7266103")
end

function Quest72661:OnSubFailed7266103(arg1)
    print("OnSubFailed7266103")
end

function Quest72661:OnSubStart7266104(arg1)
    print("OnSubStart7266104")
end

function Quest72661:OnSubFinish7266104(arg1)
    print("OnSubFinish7266104")
end

function Quest72661:OnSubFailed7266104(arg1)
    print("OnSubFailed7266104")
end

function Quest72661:OnSubStart7266105(arg1)
    print("OnSubStart7266105")
end

function Quest72661:OnSubFinish7266105(arg1)
    print("OnSubFinish7266105")
end

function Quest72661:OnSubFailed7266105(arg1)
    print("OnSubFailed7266105")
end

function Quest72661:OnSubStart7266106(arg1)
    print("OnSubStart7266106")
    self:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q72661TalkTrigger", "Actor/Gadget/Q72661TalkTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q72661_Kuangchang").pos, sceneData:GetDummyPoint(3, "Q72661_Kuangchang").rot, true, false, 3)
    end)

    self:ExitTailMode()
end

function Quest72661:OnSubFinish7266106(arg1)
    print("OnSubFinish7266106")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72661:OnSubFailed7266106(arg1)
    print("OnSubFailed7266106")
end

function Quest72661:OnSubStart7266107(arg1)
    print("OnSubStart7266107")
    self:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q72661FailTrigger", "Actor/Gadget/Q72661FailTrigger", 70900002, 0, {x = 1265.473, y = 272.3494, z = -422.9791}, {x = 0, y = 0, z = 0}, true, false, 3)
        arg1_2:EnterTailMode(11)
        local tbl = {}
        tbl.alias = "SneakAI4"
        tbl.metaPath = "Actor/Npc/YJTSneakAI"
        tbl.configID = 12164
        tbl.dataIndex = 4
        tbl.bornPos = sceneData:GetDummyPoint(3, "Q72661_daobaotuan").pos
        tbl.bornDir = sceneData:GetDummyPoint(3, "Q72661_daobaotuan").rot
        tbl.PatrolPosNum = 5
        tbl.PatrolPos = {
            sceneData:GetDummyPoint(3, "Q72661_point1").pos,
            sceneData:GetDummyPoint(3, "Q72661_point2").pos,
            sceneData:GetDummyPoint(3, "Q72661_point3").pos,
            sceneData:GetDummyPoint(3, "Q72661_point4").pos,
            sceneData:GetDummyPoint(3, "Q72661_point5").pos
        }

        tbl.PatrolDir = {
            sceneData:GetDummyPoint(3, "Q72661_point1").rot,
            sceneData:GetDummyPoint(3, "Q72661_point2").rot,
            sceneData:GetDummyPoint(3, "Q72661_point3").rot,
            sceneData:GetDummyPoint(3, "Q72661_point4").rot,
            sceneData:GetDummyPoint(3, "Q72661_point5").rot
        }

        tbl.PatrolNext = 1
        local v = {
            FollowLen = 100,
            FailLen = 10,
            RoutePoints = {
                sceneData:GetDummyPoint(3, "Q72661_point1").pos,
                sceneData:GetDummyPoint(3, "Q72661_point2").pos,
                sceneData:GetDummyPoint(3, "Q72661_point3").pos,
                sceneData:GetDummyPoint(3, "Q72661_point4").pos,
                sceneData:GetDummyPoint(3, "Q72661_point5").pos
            },
            Q72661Trigger1_ = {
                alias = "Q72661Trigger1",
                script = "Actor/Gadget/Q72661Trigger1",
                id = 70900002,
                point = sceneData:GetDummyPoint(3, "Q72661_daobaotuan")
            }
        }

        arg1_2:CreateQuestNpc(arg1, npcs.Npc12164Data.id, 0):CallOnStart(function(arg1)
            arg1.PatrolPosNum = tbl.PatrolPosNum
            arg1.PatrolPos = tbl.PatrolPos
            arg1.PatrolDir = tbl.PatrolDir
            arg1.PatrolNext = 0
            arg1:Start()
        end)

        arg1_2:CheckDistance()
    end)
end

function Quest72661:OnSubFinish7266107(arg1)
    print("OnSubFinish7266107")
    self:SafeDestroyQuestNpc(npcs.Npc12164Data.alias, 3)
    self:ExitTailMode()
end

function Quest72661:OnSubFailed7266107(arg1)
    print("OnSubFailed7266107")
    self:ExitTailMode()
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc12164Data.alias, 3)
    end)
end

function Quest72661:OnSubStart7266113(arg1)
    print("OnSubStart7266113")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1.5
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * n
        local v = avatarForward
        v.x = v.x * -1
        v.z = v.z * -1
        arg1:CreateQuestNpcByIdWithPos(7266113, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
        arg1:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, false)
end

function Quest72661:OnSubFinish7266113(arg1)
    print("OnSubFinish7266113")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72661:OnSubFailed7266113(arg1)
    print("OnSubFailed7266113")
end

function Quest72661:OnSubStart7266108(arg1)
    print("OnSubStart7266108")
end

function Quest72661:OnSubFinish7266108(arg1)
    print("OnSubFinish7266108")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskLegacy(datas.KaicheFightOver, nil, "", 72661)
    end)
end

function Quest72661:OnSubFailed7266108(arg1)
    print("OnSubFailed7266108")
end

function Quest72661:OnSubStart7266109(arg1)
    print("OnSubStart7266109")
    self:CreateQuestNpc(arg1, npcs.Npc3200Data.id, 1)
end

function Quest72661:OnSubFinish7266109(arg1)
    print("OnSubFinish7266109")
end

function Quest72661:OnSubFailed7266109(arg1)
    print("OnSubFailed7266109")
end

function Quest72661:OnSubStart7266110(arg1)
    print("OnSubStart7266110")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(7266110, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest72661:OnSubFinish7266110(arg1)
    print("OnSubFinish7266110")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72661:OnSubFailed7266110(arg1)
    print("OnSubFailed7266110")
end

function Quest72661:OnSubStart7266111(arg1)
    print("OnSubStart7266111")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(7266111, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest72661:OnSubFinish7266111(arg1)
    print("OnSubFinish7266111")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72661:OnSubFailed7266111(arg1)
    print("OnSubFailed7266111")
end

function Quest72661:OnSubStart7266112(arg1)
    print("OnSubStart7266112")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(7266112, npcs.PaimonData.id, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest72661:OnSubFinish7266112(arg1)
    print("OnSubFinish7266112")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72661:OnSubFailed7266112(arg1)
    print("OnSubFailed7266112")
end

return Quest72661
