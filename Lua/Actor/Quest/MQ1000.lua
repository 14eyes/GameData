require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1000 = class("Quest1000", QuestActorProxy)
local clientData
local n = 0
local DailyNPCManager = require("Actor/DailyNPCManager")

Quest1000.defaultAlias = "Quest1000"
local tbl
local subIDs
local guanhaiData
local yixianData
local yizhuData
local bolaiData
local aweiData
local xingxiData
local deangongData
local chaboshiData
local faneryeData
local jifangData
local xiaoanData
local jiangzhouData
local paimonData
local huihuiData
local licaiData
local linlangData
local xiuhuaData
local changchangData
local gongziData
local ivanData
local ningguangData
local changshunData
local maid1Data
local maid2Data
local v = 0
local n2 = 0
local questOrphanNpcPlaceList

function Quest1000:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    tbl = {
        clientData.SneakAI1Data,
        clientData.SneakAI2Data,
        clientData.SneakAI3Data,
        clientData.SneakAI4Data,
        clientData.SneakAI7Data,
        clientData.SneakAI8Data,
        clientData.SneakAI10Data,
        clientData.SneakAI11Data,
        clientData.SneakAI12Data,
        clientData.SneakAI13Data,
        clientData.SneakAI14Data,
        clientData.SneakAI15Data,
        clientData.SneakAI16Data,
        clientData.SneakAI17Data,
        clientData.SneakAI31Data,
        clientData.SneakAI32Data,
        clientData.SneakAI33Data,
        clientData.SneakAI34Data,
        clientData.SneakAI35Data,
        clientData.SneakAI36Data
    }

    subIDs = clientData.SubIDs
    guanhaiData = clientData.GuanhaiData
    yixianData = clientData.YixianData
    yizhuData = clientData.YizhuData
    bolaiData = clientData.BolaiData
    aweiData = clientData.AweiData
    xingxiData = clientData.XingxiData
    deangongData = clientData.DeangongData
    chaboshiData = clientData.ChaboshiData
    faneryeData = clientData.FaneryeData
    jifangData = clientData.JifangData
    xiaoanData = clientData.XiaoanData
    jiangzhouData = clientData.JiangzhouData
    paimonData = clientData.PaimonData
    huihuiData = clientData.HuihuiData
    licaiData = clientData.LicaiData
    linlangData = clientData.LinlangData
    xiuhuaData = clientData.XiuhuaData
    changchangData = clientData.ChangchangData
    gongziData = clientData.GongziData
    ivanData = clientData.IvanData
    ningguangData = clientData.NingguangData
    changshunData = clientData.ChangshunData
    maid1Data = clientData.Maid1Data
    maid2Data = clientData.Maid2Data
    questOrphanNpcPlaceList = clientData.QuestOrphanNpcPlaceList
end

function Quest1000:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100000"] = self.OnSubStart100000
    self.subStartHandlers["100001"] = self.OnSubStart100001
    self.subStartHandlers["100002"] = self.OnSubStart100002
    self.subStartHandlers["100003"] = self.OnSubStart100003
    self.subStartHandlers["100004"] = self.OnSubStart100004
    self.subStartHandlers["100005"] = self.OnSubStart100005
    self.subStartHandlers["100006"] = self.OnSubStart100006
    self.subStartHandlers["100007"] = self.OnSubStart100007
    self.subStartHandlers["100021"] = self.OnSubStart100021
    self.subStartHandlers["100022"] = self.OnSubStart100022
    self.subStartHandlers["100023"] = self.OnSubStart100023
    self.subStartHandlers["100024"] = self.OnSubStart100024
    self.subStartHandlers["100025"] = self.OnSubStart100025
    self.subStartHandlers["100026"] = self.OnSubStart100026
    self.subStartHandlers["100008"] = self.OnSubStart100008
    self.subStartHandlers["100015"] = self.OnSubStart100015
    self.subStartHandlers["100009"] = self.OnSubStart100009
    self.subStartHandlers["100010"] = self.OnSubStart100010
    self.subStartHandlers["100011"] = self.OnSubStart100011
    self.subStartHandlers["100012"] = self.OnSubStart100012
    self.subStartHandlers["100013"] = self.OnSubStart100013
    self.subStartHandlers["100014"] = self.OnSubStart100014
end

function Quest1000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100000"] = self.OnSubFinish100000
    self.subFinishHandlers["100001"] = self.OnSubFinish100001
    self.subFinishHandlers["100002"] = self.OnSubFinish100002
    self.subFinishHandlers["100003"] = self.OnSubFinish100003
    self.subFinishHandlers["100004"] = self.OnSubFinish100004
    self.subFinishHandlers["100005"] = self.OnSubFinish100005
    self.subFinishHandlers["100006"] = self.OnSubFinish100006
    self.subFinishHandlers["100007"] = self.OnSubFinish100007
    self.subFinishHandlers["100021"] = self.OnSubFinish100021
    self.subFinishHandlers["100022"] = self.OnSubFinish100022
    self.subFinishHandlers["100023"] = self.OnSubFinish100023
    self.subFinishHandlers["100024"] = self.OnSubFinish100024
    self.subFinishHandlers["100025"] = self.OnSubFinish100025
    self.subFinishHandlers["100026"] = self.OnSubFinish100026
    self.subFinishHandlers["100008"] = self.OnSubFinish100008
    self.subFinishHandlers["100015"] = self.OnSubFinish100015
    self.subFinishHandlers["100009"] = self.OnSubFinish100009
    self.subFinishHandlers["100010"] = self.OnSubFinish100010
    self.subFinishHandlers["100011"] = self.OnSubFinish100011
    self.subFinishHandlers["100012"] = self.OnSubFinish100012
    self.subFinishHandlers["100013"] = self.OnSubFinish100013
    self.subFinishHandlers["100014"] = self.OnSubFinish100014
end

function Quest1000:ShowBubble(arg1, arg2)
    print("NOW Bubble", arg1)
    self:CreateSpeechBubbleTask(arg1, arg2, 5, true, 1, 2)
end

function Quest1000:GetDistance()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q1000Runaway01").pos
    local dist = M.Dist(pos, avatarPos)
    print("NOW Distance is", dist)
    if 73 < dist then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(true, 100010)
        end
    else
        self:CheckDistance()
    end
end

function Quest1000:CheckDistance()
    if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
        if self:GetSubQuestState(100010) == 2 then
            self:CallDelay(1.5, self.GetDistance)
        end
    end
end

function Quest1000:SneakAIPrepare100010()
    print("FailNum is", n)
    if n < 2 then
        tbl = {
            clientData.SneakAI1Data,
            clientData.SneakAI2Data,
            clientData.SneakAI3Data,
            clientData.SneakAI4Data,
            clientData.SneakAI7Data,
            clientData.SneakAI8Data,
            clientData.SneakAI10Data,
            clientData.SneakAI11Data,
            clientData.SneakAI12Data,
            clientData.SneakAI13Data,
            clientData.SneakAI14Data,
            clientData.SneakAI15Data,
            clientData.SneakAI16Data,
            clientData.SneakAI17Data,
            clientData.SneakAI31Data,
            clientData.SneakAI32Data,
            clientData.SneakAI33Data,
            clientData.SneakAI34Data,
            clientData.SneakAI35Data,
            clientData.SneakAI36Data
        }

        clientData.SneakAINum = 20
        print("SneakAINum is", clientData.SneakAINum)
    else
        tbl = {
            clientData.SneakAI2Data,
            clientData.SneakAI3Data,
            clientData.SneakAI8Data,
            clientData.SneakAI10Data,
            clientData.SneakAI11Data,
            clientData.SneakAI12Data,
            clientData.SneakAI13Data,
            clientData.SneakAI14Data,
            clientData.SneakAI15Data,
            clientData.SneakAI16Data,
            clientData.SneakAI31Data,
            clientData.SneakAI32Data,
            clientData.SneakAI33Data,
            clientData.SneakAI34Data,
            clientData.SneakAI35Data,
            clientData.SneakAI36Data
        }

        clientData.SneakAINum = 16
        print("SneakAINum is", clientData.SneakAINum)
    end

    for i = 1, clientData.SneakAINum do
        self:CreateQuestNpcById(100010, tbl[i].configID):CallOnStart(function(arg1)
            arg1.PatrolPosNum = tbl[i].PatrolPosNum
            arg1.PatrolPos = tbl[i].PatrolPos
            arg1.PatrolDir = tbl[i].PatrolDir
            arg1.PatrolNext = 1
            arg1.AIDict = i
            arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
            arg1:StartPatrol()
        end)
    end
end

function Quest1000:SneakAIPrepare100015()
    print("FailNum is", n)
    if n < 2 then
        tbl = {
            clientData.SneakAI1Data,
            clientData.SneakAI2Data,
            clientData.SneakAI3Data,
            clientData.SneakAI4Data,
            clientData.SneakAI7Data,
            clientData.SneakAI8Data,
            clientData.SneakAI10Data,
            clientData.SneakAI11Data,
            clientData.SneakAI12Data,
            clientData.SneakAI13Data,
            clientData.SneakAI14Data,
            clientData.SneakAI15Data,
            clientData.SneakAI16Data,
            clientData.SneakAI17Data,
            clientData.SneakAI31Data,
            clientData.SneakAI32Data,
            clientData.SneakAI33Data,
            clientData.SneakAI34Data,
            clientData.SneakAI35Data,
            clientData.SneakAI36Data
        }

        clientData.SneakAINum = 20
        print("SneakAINum is", clientData.SneakAINum)
    else
        tbl = {
            clientData.SneakAI2Data,
            clientData.SneakAI3Data,
            clientData.SneakAI8Data,
            clientData.SneakAI10Data,
            clientData.SneakAI11Data,
            clientData.SneakAI12Data,
            clientData.SneakAI13Data,
            clientData.SneakAI14Data,
            clientData.SneakAI15Data,
            clientData.SneakAI16Data,
            clientData.SneakAI31Data,
            clientData.SneakAI32Data,
            clientData.SneakAI33Data,
            clientData.SneakAI34Data,
            clientData.SneakAI35Data,
            clientData.SneakAI36Data
        }

        clientData.SneakAINum = 16
        print("SneakAINum is", clientData.SneakAINum)
    end

    for i = 1, clientData.SneakAINum do
        self:CreateQuestNpcById(100015, tbl[i].configID):CallOnStart(function(arg1)
            arg1.PatrolPosNum = tbl[i].PatrolPosNum
            arg1.PatrolPos = tbl[i].PatrolPos
            arg1.PatrolDir = tbl[i].PatrolDir
            arg1.PatrolNext = 1
            arg1.AIDict = i
            arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
            arg1:StartPatrol()
        end)
    end
end

function Quest1000:SneakAIDestroy()
    tbl = {
        clientData.SneakAI1Data,
        clientData.SneakAI2Data,
        clientData.SneakAI3Data,
        clientData.SneakAI4Data,
        clientData.SneakAI7Data,
        clientData.SneakAI8Data,
        clientData.SneakAI10Data,
        clientData.SneakAI11Data,
        clientData.SneakAI12Data,
        clientData.SneakAI13Data,
        clientData.SneakAI14Data,
        clientData.SneakAI15Data,
        clientData.SneakAI16Data,
        clientData.SneakAI17Data,
        clientData.SneakAI31Data,
        clientData.SneakAI32Data,
        clientData.SneakAI33Data,
        clientData.SneakAI34Data,
        clientData.SneakAI35Data,
        clientData.SneakAI36Data
    }

    clientData.SneakAINum = 20
    for i = 1, clientData.SneakAINum do
        local questNpcActor = self:GetQuestNpcActor(tbl[i].alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end
end

function Quest1000:NPCDestroy()
    local questNpcActor = self:GetQuestNpcActor(ivanData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(changshunData.Alias)
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(linlangData.Alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    local questNpcActor3 = self:GetQuestNpcActor(chaboshiData.Alias)
    if questNpcActor3 ~= nil then
        questNpcActor3:Destroy(false)
    end

    local questNpcActor4 = self:GetQuestNpcActor(faneryeData.Alias)
    if questNpcActor4 ~= nil then
        questNpcActor4:Destroy(false)
    end

    local questNpcActor5 = self:GetQuestNpcActor(jifangData.Alias)
    if questNpcActor5 ~= nil then
        questNpcActor5:Destroy(false)
    end

    local questNpcActor6 = self:GetQuestNpcActor(xiaoanData.Alias)
    if questNpcActor6 ~= nil then
        questNpcActor6:Destroy(false)
    end

    local questNpcActor7 = self:GetQuestNpcActor(jiangzhouData.Alias)
    if questNpcActor7 ~= nil then
        questNpcActor7:Destroy(false)
    end
end

function Quest1000:OnSubStart100000(arg1)
    print("100001 start:...")
    self:NotifyTo("Npc2025", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, bolaiData.ID)
    self:CreateQuestNpc(arg1, deangongData.ID)
    self:CreateQuestNpc(arg1, faneryeData.ID)
    self:CreateQuestNpc(arg1, linlangData.ID)
    self:CreateQuestNpc(arg1, guanhaiData.ID)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(guanhaiData.Alias):DoFreeStyle(1120)
        arg1:ShowBubble(guanhaiData.ID, 10000002)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(bolaiData.Alias):DoFreeStyle(1180)
        arg1:ShowBubble(bolaiData.ID, 10000003)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(linlangData.Alias):DoFreeStyle(1180)
        arg1:ShowBubble(linlangData.ID, 10000001)
    end)

    actorMgr:CreateActorWithPos("Q100000Trigger", "Actor/Gadget/Q100000Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q100001Player").pos, sceneData:GetDummyPoint(3, "Q100001Player").rot, true, false)
end

function Quest1000:OnSubStart100001(arg1)
    print("100001 start:...")
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        print("playerpos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1.5
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * n
        print("paimon pos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
        local v = avatarForward
        v.x = v.x * -1
        v.z = v.z * -1
        arg1:CreateQuestNpcByIdWithPos(100001, 1005, 0, avatarPos, M.Dir2Euler(v))
        arg1:RequestInteraction(paimonData.Paimon)
    end)
end

function Quest1000:OnSubStart100002(arg1)
    print("100002 start:...")
end

function Quest1000:OnSubStart100003(arg1)
    print("100003 start:...")
end

function Quest1000:OnSubStart100004(arg1)
    print("100004 start:...")
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo("Npc1625", DailyNPCManager.NpcEventType.HIDESELF, true)
    end)

    self:CreateQuestNpc(arg1, jifangData.ID)
end

function Quest1000:OnSubStart100005(arg1)
    print("100005 start:...")
end

function Quest1000:OnSubStart100006(arg1)
    print("100006 start:...")
    self:NotifyTo("Npc2064", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2023", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(jiangzhouData.Alias):DoFreeStyle(1180)
        arg1:ShowBubble(202601, 10000001)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(bolaiData.Alias):DoFreeStyle(1180)
        arg1:ShowBubble(bolaiData.ID, 10000003)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(xiaoanData.Alias):DoFreeStyle(1120)
        arg1:ShowBubble(xiaoanData.ID, 10000002)
    end)
end

function Quest1000:OnSubStart100007(arg1)
    print("100007 start:...")
    actorMgr:CreateActorWithPos("Q100007Trigger", "Actor/Gadget/Q100007Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1000Zone2").pos, sceneData:GetDummyPoint(3, "Q1000Zone2").rot, true, false)
    self:CreateQuestNpc(arg1, ivanData.ID)
    self:CreateQuestNpc(arg1, changshunData.ID)
    self:CreateQuestNpc(arg1, ningguangData.ID)
    self:CreateQuestNpc(arg1, maid1Data.ID)
    self:CreateQuestNpc(arg1, maid2Data.ID)
end

function Quest1000:OnSubStart100024(arg1)
    print("100024 start:...")
    self:NotifyTo("Npc2073", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, 2003002)
    self:CreateQuestNpc(arg1, 2003003)
    self:CreateQuestNpc(arg1, ivanData.ID)
    self:CreateQuestNpc(arg1, changshunData.ID)
    self:CreateQuestNpc(arg1, ningguangData.ID)
    self:CreateQuestNpc(arg1, maid1Data.ID)
    self:CreateQuestNpc(arg1, maid2Data.ID)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(ivanData.Alias):DoFreeStyle(4000)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(changshunData.Alias):DoFreeStyle(4000)
    end)

    self:SpawnGadget(arg1, 70710044, 1)
    self:SpawnGadget(arg1, 70710044, 2)
    local entityHandler = actorMgr:GetEntityHandler("Xianglu1")
    self:SetEntityMaterialPropValue(entityHandler, 2, 0)
    local v = actorMgr:GetEntityHandler("Xianglu2")
    self:SetEntityMaterialPropValue(v, 2, 0)
end

function Quest1000:OnSubStart100026(arg1)
    print("100026 start:...")
    actorMgr:CreateActorWithPos("Q100026Trigger", "Actor/Gadget/Q100026Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1000Zone2").pos, sceneData:GetDummyPoint(3, "Q1000Zone2").rot, true, false)
end

function Quest1000:OnSubStart100008(arg1)
    print("100008 start:...")
    local questNpcActor = self:GetQuestNpcActor(ivanData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(changshunData.Alias)
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(huihuiData.Alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    local questNpcActor3 = self:GetQuestNpcActor(licaiData.Alias)
    if questNpcActor3 ~= nil then
        questNpcActor3:Destroy(false)
    end

    local questNpcActor4 = self:GetQuestNpcActor(linlangData.Alias)
    if questNpcActor4 ~= nil then
        questNpcActor4:Destroy(false)
    end

    local questNpcActor5 = self:GetQuestNpcActor(xiuhuaData.Alias)
    if questNpcActor5 ~= nil then
        questNpcActor5:Destroy(false)
    end

    local questNpcActor6 = self:GetQuestNpcActor(changchangData.Alias)
    if questNpcActor6 ~= nil then
        questNpcActor6:Destroy(false)
    end

    self:PlayCutsceneIndex(100001, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function Quest1000:OnSubStart100015(arg1)
    print("100015 start:...")
    local questNpcActor = self:GetQuestNpcActor(maid1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor(maid2Data.Alias)
    if v ~= nil then
        v:Destroy(false)
    end

    local questNpcActor2 = self:GetQuestNpcActor(ningguangData.Alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:Destroy(false)
    end

    self:CreateQuestNpc(arg1, 1005)
    self:NotifyTo("Npc2073", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:RequestInteraction(paimonData.Paimon)
    self:CallDelay(0.2, self.SneakAIPrepare100015)
    self:CreateQuestNpc(arg1, ivanData.ID)
    self:CreateQuestNpc(arg1, changshunData.ID)
    self:CreateQuestNpc(arg1, linlangData.ID)
    self:CreateQuestNpc(arg1, chaboshiData.ID)
    self:CreateQuestNpc(arg1, faneryeData.ID)
    self:CreateQuestNpc(arg1, jifangData.ID)
    self:CreateQuestNpc(arg1, xiaoanData.ID)
    self:CreateQuestNpc(arg1, jiangzhouData.ID)
    self:CreateQuestNpc(arg1, 2003004)
    self:CreateQuestNpc(arg1, 2003005)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(ivanData.Alias):DoFreeStyle(1180)
        arg1:ShowBubble(ivanData.ID, 10001021)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(changshunData.Alias):DoFreeStyle(1120)
        arg1:ShowBubble(changshunData.ID, 10001022)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(linlangData.Alias):DoFreeStyle(1120)
        arg1:ShowBubble(linlangData.ID, 10001023)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(chaboshiData.Alias):DoFreeStyle(1030)
        arg1:ShowBubble(chaboshiData.ID, 10001024)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(faneryeData.Alias):DoFreeStyle(1050)
        arg1:ShowBubble(faneryeData.ID, 10001021)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(jifangData.Alias):DoFreeStyle(1110)
        arg1:ShowBubble(jifangData.ID, 10001022)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(xiaoanData.Alias):DoFreeStyle(1180)
        arg1:ShowBubble(xiaoanData.ID, 10001023)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(jiangzhouData.Alias):DoFreeStyle(1160)
        arg1:ShowBubble(jiangzhouData.ID, 10001024)
    end)
end

function Quest1000:OnSubStart100009(arg1)
    print("100009 start:...")
    actorMgr:CreateActorWithPos("Q100009Trigger", "Actor/Gadget/Q100009Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1000Zone3").pos, sceneData:GetDummyPoint(3, "Q1000Zone3").rot, true, false)
    self:NotifyTo("Npc2073", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1000:OnSubStart100010(arg1)
    print("100010 start:...")
    self:NotifyTo("Npc2093", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2014", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2073", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2029", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2070", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:SneakAIDestroy()
    self:ForceFlushRemove()
    self:CallDelay(0.1, self.SneakAIPrepare100010)
    self:ClearNarratorTask()
    self:StopNarrator()
    self:EnterWildSneakMode(11)
    actorMgr:CreateActorWithPos("Q100010Trigger", "Actor/Gadget/Q100010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1000Target").pos, sceneData:GetDummyPoint(3, "Q1000Target").rot, true, false)
    actorMgr:CreateActorWithPos("Q1000SneakArea", "Actor/Gadget/Q1000SneakArea", 70900002, 0, sceneData:GetDummyPoint(3, "Q1000Runaway01").pos, sceneData:GetDummyPoint(3, "Q1000Runaway01").rot, true, false)
    self:CallDelay(1.5, function(arg1)
        globalActor:EnablePlayerInput(true)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(ivanData.Alias):DoFreeStyle(1180)
        arg1:ShowBubble(ivanData.ID, 10001021)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(changshunData.Alias):DoFreeStyle(1120)
        arg1:ShowBubble(changshunData.ID, 10001022)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(linlangData.Alias):DoFreeStyle(1120)
        arg1:ShowBubble(linlangData.ID, 10001023)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(chaboshiData.Alias):DoFreeStyle(1030)
        arg1:ShowBubble(chaboshiData.ID, 10001024)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(faneryeData.Alias):DoFreeStyle(1050)
        arg1:ShowBubble(faneryeData.ID, 10001021)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(jifangData.Alias):DoFreeStyle(1110)
        arg1:ShowBubble(jifangData.ID, 10001022)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(xiaoanData.Alias):DoFreeStyle(1180)
        arg1:ShowBubble(xiaoanData.ID, 10001023)
    end)

    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(jiangzhouData.Alias):DoFreeStyle(1160)
        arg1:ShowBubble(jiangzhouData.ID, 10001024)
    end)
end

function Quest1000:OnSubStart100011(arg1)
    print("100011 start:...")
    n = n + 1
    self:CallDelay(2.5, function(arg1)
        arg1:UnSpawn("Goal1")
        arg1:UnSpawn("Goal2")
        arg1:SneakAIDestroy()
        arg1:ForceFlushRemove()
        arg1:ExitWildSneakMode()
        arg1:TransmitPlayerByQuestId(100011, 1, arg1.FinishSneak)
    end)
end

function Quest1000:FinishSneak()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest1000:OnSubStart100012(arg1)
    print("100012 start:...")
    self:NotifyTo("Npc2073", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:PlayCutsceneIndex(100002, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function Quest1000:OnSubStart100013(arg1)
    print("100013 start:...")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({gongziData.Alias})
    self:ShowBlackScreen(0.5, 1.7, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, gongziData.ID)
    end, nil, questNpcCreateTask)
end

function Quest1000:OnSubStart100014(arg1)
    print("100014 start:...")
    actorMgr:CreateActorWithPos("Q100014Trigger", "Actor/Gadget/Q100014Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q100014Gongzi").pos, sceneData:GetDummyPoint(3, "Q100014Gongzi").rot, true, false)
end

function Quest1000:OnSubFinish100001(arg1)
    print("OnFinished 100001")
    self:NotifyTo("Npc2025", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1000:OnSubFinish100002(arg1)
    print("OnFinished 100002")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1000:OnSubFinish100003(arg1)
    print("OnFinished 100003")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1000:OnSubFinish100004(arg1)
    print("OnFinished 100004")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1000:OnSubFinish100005(arg1)
    print("OnFinished 100005")
end

function Quest1000:OnSubFinish100006(arg1)
    print("OnFinished 100006")
end

function Quest1000:OnSubFinish100007(arg1)
    print("OnFinished 100007")
    self:NotifyTo("Npc2064", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2023", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1625", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorFlow01, nil, "Tag")
    end)

    local questNpcActor = self:GetQuestNpcActor(bolaiData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1000:OnSubFinish100021(arg1)
    print("OnFinished 100021")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1000:CheckLight2(arg1)
    if v < 10 then
        self:ShowLight2()
    end
end

function Quest1000:ShowLight2(arg1)
    v = v + 0.9
    local entityHandler = actorMgr:GetEntityHandler("Xianglu2")
    self:SetEntityMaterialPropValue(entityHandler, 2, v)
    self:CallDelay(0.2, self.CheckLight2)
end

function Quest1000:OnSubFinish100022(arg1)
    print("OnFinished 100022")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:ShowLight1()
end

function Quest1000:CheckLight1(arg1)
    if n2 < 10 then
        self:ShowLight1()
    end
end

function Quest1000:ShowLight1(arg1)
    n2 = n2 + 0.9
    local entityHandler = actorMgr:GetEntityHandler("Xianglu1")
    self:SetEntityMaterialPropValue(entityHandler, 2, n2)
    self:CallDelay(0.2, self.CheckLight1)
end

function Quest1000:OnSubFinish100015(arg1)
    print("OnFinished 100015")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)

    self:CallDelay(4, function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorFlow, nil, "Tag")
    end)

    self:CallDelay(2, function(arg1)
        arg1:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1000Guard0101").pos, 2.5, 2, true, true)
    end)

    globalActor:EnablePlayerInput(false)
    self:CallDelay(4, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest1000:OnSubFinish100010(arg1)
    print("OnFinished 100010")
    self:SneakAIDestroy()
    self:NPCDestroy()
    self:ExitWildSneakMode()
    self:UnSpawn("Goal1")
    self:UnSpawn("Goal2")
    self:ForceFlushRemove()
end

function Quest1000:OnSubFinish100013(arg1)
    print("OnFinished 100013")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(gongziData.Alias)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end

            local v = arg1:GetQuestNpcActor("Paimon")
            if v ~= nil then
                v:DestroyWithDisappear(false)
            end
        end)
    end)
end

function Quest1000:OnSubFinish100012(arg1)
    print("OnFinished 100014")
    self:NotifyTo("Npc2093", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2014", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2073", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2029", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2071", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2069", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2070", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest1000:OnSubFinish100014(arg1)
    print("OnFinished 100014")
    globalActor:UnSpawn("Xianglu1")
    globalActor:UnSpawn("Xianglu2")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestOrphanNpc(arg1, gongziData.ID, 0, false, 0.5)
        local questNpcActor = arg1_2:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1000:InvokeOnInteraction(arg1)
    if arg1 == 31 then
        print("Now Xianglu1")
        self:ShowLight1()
        self:PlayEffect("Eff_Censer_Empty_Sound", sceneData:GetDummyPoint(3, "Q1000Xianglu1").pos)
    elseif arg1 == 21 then
        print("Now Xianglu2")
        self:ShowLight2()
        self:PlayEffect("Eff_Censer_Empty_Sound", sceneData:GetDummyPoint(3, "Q1000Xianglu2").pos)
    end
end

function Quest1000:Start() end
function Quest1000:OnDestroy() end
return Quest1000
