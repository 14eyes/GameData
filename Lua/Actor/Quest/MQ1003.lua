require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1003 = class("Quest1003", QuestActorProxy)
Quest1003.defaultAlias = "Quest1003"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local paimonData
local xiaoData
local n = 1003
local verrGoldetData
local yanxiaoData
local xiaomingData
local xiaoming02Data
local gongziData
local rock01Data
local rock02Data
local rock03Data
local guideData
local bornEffData
local xiangmoyinData
local tbl = {}
tbl[1] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
tbl[2] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
tbl[3] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
local v = {}
local n2 = 0
local n3 = 0

function Quest1003:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 1003
    paimonData = clientData.PaimonData
    xiaoData = clientData.XiaoData
    verrGoldetData = clientData.VerrGoldetData
    yanxiaoData = clientData.YanxiaoData
    xiaomingData = clientData.XiaomingData
    xiaoming02Data = clientData.Xiaoming02Data
    gongziData = clientData.GongziData
    rock01Data = clientData.Rock01Data
    rock02Data = clientData.Rock02Data
    rock03Data = clientData.Rock03Data
    guideData = clientData.GuideData
    bornEffData = clientData.BornEffData
    xiangmoyinData = clientData.XiangmoyinData
end

function Quest1003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100301"] = self.OnSubStart100301
    self.subStartHandlers["100320"] = self.OnSubStart100320
    self.subStartHandlers["100302"] = self.OnSubStart100302
    self.subStartHandlers["100303"] = self.OnSubStart100303
    self.subStartHandlers["100319"] = self.OnSubStart100319
    self.subStartHandlers["100304"] = self.OnSubStart100304
    self.subStartHandlers["100305"] = self.OnSubStart100305
    self.subStartHandlers["100306"] = self.OnSubStart100306
    self.subStartHandlers["100307"] = self.OnSubStart100307
    self.subStartHandlers["100308"] = self.OnSubStart100308
    self.subStartHandlers["100309"] = self.OnSubStart100309
    self.subStartHandlers["100310"] = self.OnSubStart100310
    self.subStartHandlers["100321"] = self.OnSubStart100321
    self.subStartHandlers["100311"] = self.OnSubStart100311
    self.subStartHandlers["100312"] = self.OnSubStart100312
    self.subStartHandlers["100313"] = self.OnSubStart100313
    self.subStartHandlers["100314"] = self.OnSubStart100314
    self.subStartHandlers["100315"] = self.OnSubStart100315
    self.subStartHandlers["100316"] = self.OnSubStart100316
    self.subStartHandlers["100317"] = self.OnSubStart100317
    self.subStartHandlers["100318"] = self.OnSubStart100318
end

function Quest1003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100301"] = self.OnSubFinish100301
    self.subFinishHandlers["100320"] = self.OnSubFinish100320
    self.subFinishHandlers["100302"] = self.OnSubFinish100302
    self.subFinishHandlers["100303"] = self.OnSubFinish100303
    self.subFinishHandlers["100319"] = self.OnSubFinish100319
    self.subFinishHandlers["100304"] = self.OnSubFinish100304
    self.subFinishHandlers["100305"] = self.OnSubFinish100305
    self.subFinishHandlers["100306"] = self.OnSubFinish100306
    self.subFinishHandlers["100307"] = self.OnSubFinish100307
    self.subFinishHandlers["100308"] = self.OnSubFinish100308
    self.subFinishHandlers["100309"] = self.OnSubFinish100309
    self.subFinishHandlers["100310"] = self.OnSubFinish100310
    self.subFinishHandlers["100321"] = self.OnSubFinish100321
    self.subFinishHandlers["100311"] = self.OnSubFinish100311
    self.subFinishHandlers["100312"] = self.OnSubFinish100312
    self.subFinishHandlers["100313"] = self.OnSubFinish100313
    self.subFinishHandlers["100314"] = self.OnSubFinish100314
    self.subFinishHandlers["100315"] = self.OnSubFinish100315
    self.subFinishHandlers["100316"] = self.OnSubFinish100316
    self.subFinishHandlers["100317"] = self.OnSubFinish100317
    self.subFinishHandlers["100318"] = self.OnSubFinish100318
end

function Quest1003:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest1003:Hint()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q100311JieMI").pos
    if M.Dist(pos, avatarPos) < 3 then
        if n2 == 1 then
            print("\232\183\157\231\166\187\230\173\163\231\161\174\232\167\163\232\176\156\231\130\185\230\158\129\232\191\145")
            self:TryCameraMatch()
            self:CallDelay(1, self.Hint)
        end
    else
        if n2 == 1 then
            self:CallDelay(1, self.Hint)
        end
    end
end

function Quest1003:Hint01()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q100311JieMI").pos
    local dist = M.Dist(pos, avatarPos)
    local entityHandler = actorMgr:GetEntityHandler("Rock100301")
    local entityHandler2 = actorMgr:GetEntityHandler("Rock100302")
    local entityHandler3 = actorMgr:GetEntityHandler("Rock100303")
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    local n = 0
    for i = 1, 3 do
        tbl[i].posA = clientData.Ray[i].posA - cameraPos
        tbl[i].posB = clientData.Ray[i].posB - cameraPos
        v[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
        if v[i] < 20 then
            if 5 < v[i] then
                n = n + 5 / v[i]
            end
        else
            if v[i] < 5 then
                n = n + 1
            else
                n = n + 0.25
            end
        end
    end

    if self:GetSubQuestState(100311) ~= 3 then
        if 3 < dist and dist < 20 then
            local n2 = 20 * (3 / dist + n) / 4
            self:SetEntityMaterialPropValue(entityHandler, 1, n2)
            self:SetEntityMaterialPropValue(entityHandler2, 1, n2)
            self:SetEntityMaterialPropValue(entityHandler3, 1, n2)
            self:CallDelay(0.5, self.Hint01)
        elseif dist < 3 then
            local n2 = 20 * n / 3
            self:SetEntityMaterialPropValue(entityHandler, 1, n2)
            self:SetEntityMaterialPropValue(entityHandler2, 1, n2)
            self:SetEntityMaterialPropValue(entityHandler3, 1, n2)
            self:CallDelay(0.5, self.Hint01)
        else
            self:CallDelay(0.5, self.Hint01)
        end
    end
end

function Quest1003:TryCameraMatch()
    local compareEuler = false
    local flag = false
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    for i = 1, 3 do
        n3 = 1
        tbl[i].posA = clientData.Ray[i].posA - cameraPos
        tbl[i].posB = clientData.Ray[i].posB - cameraPos
        v[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
        if 5 < v[i] then
            n3 = 0
            break
        end
    end

    if n3 == 1 then
        compareEuler = M.CompareEuler(cameraEuler, clientData.CameraData.rot, 77)
    end

    if compareEuler == true then
        self:CallDelay(0.6, function(arg1)
            local cameraPos = arg1:GetCameraPos()
            local cameraEuler = arg1:GetCameraEuler()
            for i = 1, 3 do
                n3 = 1
                tbl[i].posA = clientData.Ray[i].posA - cameraPos
                tbl[i].posB = clientData.Ray[i].posB - cameraPos
                v[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
                if 5 < v[i] then
                    n3 = 0
                    break
                end
            end

            if n3 == 1 then
                flag = M.CompareEuler(cameraEuler, clientData.CameraData.rot, 77)
            end

            if flag == true then
                local entityHandler = actorMgr:GetEntityHandler("Rock100301")
                local entityHandler2 = actorMgr:GetEntityHandler("Rock100302")
                local entityHandler3 = actorMgr:GetEntityHandler("Rock100303")
                arg1:SetEntityMaterialPropValue(entityHandler, 1, 20)
                arg1:SetEntityMaterialPropValue(entityHandler2, 1, 20)
                arg1:SetEntityMaterialPropValue(entityHandler3, 1, 20)
                arg1:PlayEffect("Eff_SceneObj_Xiangmoyin_Hint", clientData.BornEffData.BornPos11)
                globalActor:EnablePlayerInput(false)
                arg1:CallDelay(1, function()
                    globalActor:EnablePlayerInput(true)
                    n2 = 0
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        actor:FinishQuestID(false, 100311)
                    end
                end)
            else
                compareEuler = false
            end
        end)
    end
end

function Quest1003:OnSubStart100301(arg1)
    print("100301 start:...")
    actorMgr:CreateActorWithPos("Q100301Trigger", "Actor/Gadget/Q100301Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1003Trigger").pos, sceneData:GetDummyPoint(3, "Q1003Trigger").rot, true, false)
end

function Quest1003:OnSubStart100320(arg1)
    print("100320 start:...")
    actorMgr:CreateActorWithPos("Q100320Trigger", "Actor/Gadget/Q100320Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q100320Trigger").pos, sceneData:GetDummyPoint(3, "Q100320Trigger").rot, true, false)
end

function Quest1003:OnSubStart100302(arg1)
    print("100302 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xiaoData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:PlayCutsceneIndex(100301, function(arg1)
        local v = actorMgr:GetActor(clientData.ActorAlias)
        if v ~= nil then
            v.FinishQuestID(v, false, 100302)
        end

        actor:TransmitPlayerByQuestId(100302, 1, nil, function(arg1)
            arg1:CreateQuestNpc(v, xiaoData.ID)
            arg1:RequestInteraction(xiaoData.Alias)
        end, entityCreateTask)
    end)
end

function Quest1003:OnSubStart100303(arg1)
    print("100303 start:...")
    local subQuestState = self:GetSubQuestState(100601)
    print("q100601state" .. subQuestState)
    if subQuestState ~= 3 then
        print("\230\181\183\231\129\175\232\138\130\230\156\170\229\174\140\230\136\144\232\191\135")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            local v = self:GetSubQuestState(100319)
            print("q100319state" .. v)
            actor:FinishQuestID(false, 100319)
        end
    end

    self:CreateQuestNpc(arg1, xiaoData.ID)
end

function Quest1003:OnSubStart100319(arg1)
    print("100319 start:...")
end

function Quest1003:OnSubStart100304(arg1)
    print("100304 start:...")
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, verrGoldetData.ID)
    end)
end

function Quest1003:OnSubStart100305(arg1)
    print("100305 start:...")
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, verrGoldetData.ID)
    end)
end

function Quest1003:OnSubStart100306(arg1)
    print("100306 start:...")
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, yanxiaoData.ID)
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, verrGoldetData.ID)
    end)
end

function Quest1003:OnSubStart100307(arg1)
    print("100307 start:...")
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    if actorMgr:GetActorInternal("Npc2204011003") == nil then
        self:CreateQuestNpc(arg1, yanxiaoData.ID)
    end

    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, verrGoldetData.ID)
    end)

    actorMgr:CreateActorWithPos("Q100307Trigger", "Actor/Gadget/Q100307Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q100307Trigger").pos, sceneData:GetDummyPoint(3, "Q100307Trigger").rot, true, false)
end

function Quest1003:OnSubStart100308(arg1)
    print("100308 start:...")
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, paimonData.ID)
    self:RequestInteraction(paimonData.Alias)
    if actorMgr:GetActorInternal("Npc2204011003") == nil then
        self:CreateQuestNpc(arg1, yanxiaoData.ID)
    end

    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, verrGoldetData.ID)
    end)
end

function Quest1003:OnSubStart100309(arg1)
    print("100309 start:...")
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    if actorMgr:GetActorInternal("Npc2204011003") == nil then
        self:CreateQuestNpc(arg1, yanxiaoData.ID)
    end

    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, verrGoldetData.ID)
    end)
end

function Quest1003:OnSubStart100310(arg1)
    print("100310 start:...")
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    if actorMgr:GetActorInternal("Npc2204011003") == nil then
        self:CreateQuestNpc(arg1, yanxiaoData.ID)
    end

    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, verrGoldetData.ID)
    end)
end

function Quest1003:OnSubStart100321(arg1)
    print("100321 start:...")
    self:SpawnGadget(arg1, xiangmoyinData.ID)
end

function Quest1003:OnSubStart100311(arg1)
    print("100311 start:...")
    self:SpawnGadget(arg1, rock01Data.ID)
    self:SpawnGadget(arg1, rock02Data.ID)
    self:SpawnGadget(arg1, rock03Data.ID)
    self:SpawnGadget(arg1, guideData.ID)
    n2 = 1
    self:Hint()
    self:Hint01()
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    if actorMgr:GetActorInternal("Npc2204011003") == nil then
        self:CreateQuestNpc(arg1, yanxiaoData.ID)
    end

    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, verrGoldetData.ID)
    end)
end

function Quest1003:OnSubStart100312(arg1)
    print("100312 start:...")
    n2 = 0
    globalActor:UnSpawn("BornEff1003")
    globalActor:UnSpawn("Guide1003")
    self:SpawnGadget(arg1, bornEffData.ID)
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow4)
    local questNpcActor = self:GetQuestNpcActor(xiaoming02Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDither(false, 5.5)
    end

    self:CallDelay(7, function(arg1)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 100312)
        end
    end)

    self:CallDelay(0.1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, xiaoming02Data.ID)
        local questNpcActor = arg1_2:GetQuestNpcActor(xiaoming02Data.Alias)
        if questNpcActor ~= nil then
            print("\232\183\145\230\173\165\229\188\128\229\167\139\226\128\166\226\128\166\226\128\166\226\128\166")
            questNpcActor:RunToTask(clientData.XiaomingData.BornPos12Run01, function(arg1)
                if arg1:GetQuestNpcActor(xiaoming02Data.Alias) ~= nil then
                    arg1:DestroyQuestNpcActorByAlias(xiaoming02Data.Alias, false)
                end

                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 100312)
                end
            end)
        end
    end)
end

function Quest1003:OnSubStart100313(arg1)
    print("100313 start:...")
    self:CreateQuestNpc(arg1, xiaomingData.ID)
    actorMgr:CreateActorWithPos("Q100313Trigger", "Actor/Gadget/Q100313Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q100313Trigger").pos, sceneData:GetDummyPoint(3, "Q100313Trigger").rot, true, false)
end

function Quest1003:OnSubStart100314(arg1)
    print("100314 start:...")
end

function Quest1003:OnSubStart100315(arg1)
    print("100315 start:...")
    self:CreateQuestNpc(arg1, xiaomingData.ID)
end

function Quest1003:OnSubStart100316(arg1)
    print("100316 start:...")
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, yanxiaoData.ID)
end

function Quest1003:OnSubStart100317(arg1)
    print("100317 start:...")
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, xiaoData.ID)
end

function Quest1003:OnSubStart100318(arg1)
    print("100318 start:...")
    self:CreateQuestNpc(arg1, gongziData.ID)
end

function Quest1003:OnSubFinish100301(arg1) end

function Quest1003:OnSubFinish100320(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorFlow1, nil, "StoryCut")
    end)
end

function Quest1003:OnSubFinish100302(arg1) end

function Quest1003:OnSubFinish100303(arg1)
    if self:GetQuestNpcActor(xiaoData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xiaoData.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest1003:OnSubFinish100319(arg1) end

function Quest1003:OnSubFinish100304(arg1)
    self:PaimonDis()
end

function Quest1003:OnSubFinish100305(arg1) end

function Quest1003:OnSubFinish100306(arg1)
    self:PaimonDis()
end

function Quest1003:OnSubFinish100307(arg1) end

function Quest1003:OnSubFinish100308(arg1)
    if self:GetQuestNpcActor(xiaomingData.Alias) ~= nil then
        self:DestroyQuestNpcActorByAlias(xiaomingData.Alias, false)
    end

    self:PaimonDis()
end

function Quest1003:OnSubFinish100309(arg1)
    self:PaimonDis()
end

function Quest1003:OnSubFinish100310(arg1)
    self:PaimonDis()
end

function Quest1003:OnSubFinish100321(arg1)
    globalActor:UnSpawn("Xiangmoyin")
    self:ShowQuestPictureDialog(247)
end

function Quest1003:OnSubFinish100311(arg1)
    print("100311 finish:...")
    self:NotifyTo("Npc2202", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2208", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.STARTDAILY, true)
    local entityHandler = actorMgr:GetEntityHandler("Rock100301")
    local v = actorMgr:GetEntityHandler("Rock100302")
    local entityHandler2 = actorMgr:GetEntityHandler("Rock100303")
    self:SetEntityMaterialPropValue(entityHandler, 1, 0)
    self:SetEntityMaterialPropValue(v, 1, 0)
    self:SetEntityMaterialPropValue(entityHandler2, 1, 0)
    if self:GetQuestNpcActor(verrGoldetData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(verrGoldetData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(yanxiaoData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(yanxiaoData.Alias, false)
        end)
    end
end

function Quest1003:OnSubFinish100312(arg1)
    if self:GetQuestNpcActor(xiaoming02Data.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xiaoming02Data.Alias, false)
        end)
    end
end

function Quest1003:OnSubFinish100313(arg1)
    globalActor:UnSpawn("Rock100301")
    globalActor:UnSpawn("Rock100302")
    globalActor:UnSpawn("Rock100303")
end

function Quest1003:OnSubFinish100314(arg1)
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xiaomingData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ActionSafeCall(function(arg1_2)
            actor:TransmitPlayerByQuestId(100314, 1, nil, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, xiaomingData.ID)
                arg1_2:RequestInteraction(xiaomingData.Alias)
            end, entityCreateTask)
        end)
    end)
end

function Quest1003:OnSubFinish100315(arg1)
    if self:GetQuestNpcActor(xiaomingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xiaomingData.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest1003:OnSubFinish100316(arg1)
    self:PaimonDis()
end

function Quest1003:OnSubFinish100317(arg1)
    self:NotifyTo("Npc2204", DailyNPCManager.NpcEventType.STARTDAILY, true)
    if self:GetQuestNpcActor(xiaoData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xiaoData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(yanxiaoData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(yanxiaoData.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest1003:OnSubFinish100318(arg1)
    if self:GetQuestNpcActor(gongziData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(gongziData.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest1003:Start() end
function Quest1003:OnDestroy() end
return Quest1003
