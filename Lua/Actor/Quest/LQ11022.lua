require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11022 = class("Quest11022", QuestActorProxy)
Quest11022.defaultAlias = "Quest11022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local tbl = {}
tbl[1] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
tbl[2] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
tbl[3] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
local v = {}
local n = 0
local n2 = 0
local n3 = 8

function Quest11022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1102201"] = self.OnSubStart1102201,
        ["1102202"] = self.OnSubStart1102202,
        ["1102208"] = self.OnSubStart1102208,
        ["1102203"] = self.OnSubStart1102203,
        ["1102207"] = self.OnSubStart1102207,
        ["1102209"] = self.OnSubStart1102209,
        ["1102204"] = self.OnSubStart1102204,
        ["1102205"] = self.OnSubStart1102205,
        ["1102206"] = self.OnSubStart1102206
    }
end

function Quest11022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1102201"] = self.OnSubFinish1102201,
        ["1102202"] = self.OnSubFinish1102202,
        ["1102203"] = self.OnSubFinish1102203,
        ["1102207"] = self.OnSubFinish1102207,
        ["1102204"] = self.OnSubFinish1102204,
        ["1102205"] = self.OnSubFinish1102205,
        ["1102206"] = self.OnSubFinish1102206
    }
end

function Quest11022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1102201"] = self.OnSubFailed1102201,
        ["1102202"] = self.OnSubFailed1102202,
        ["1102203"] = self.OnSubFailed1102203,
        ["1102207"] = self.OnSubFailed1102207,
        ["1102204"] = self.OnSubFailed1102204,
        ["1102205"] = self.OnSubFailed1102205,
        ["1102206"] = self.OnSubFailed1102206
    }
end

function Quest11022:Start()
    print("Start")
end

function Quest11022:OnDestroy()
    print("OnDestroy")
end

function Quest11022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11022:SceneLook()
    print("SceneLook")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q11022ZL3").pos, 2.5, 2, true, true)
    self:CallDelay(1, function(arg1)
        arg1:PlayEffect("Eff_UnlockDungeon_ZhongliQuest", sceneData:GetDummyPoint(3, "Q11022UnlockEffect").pos)
    end)
end

function Quest11022:NarratorUnlock()
    print("NarratorUnlock")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 11022)
end

function Quest11022:FinishQuest1102205()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest11022:NarratorVisual()
    print("NarratorVisual")
    self:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 11022)
end

function Quest11022:Hint()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q11022VP").pos
    if M.Dist(pos, avatarPos) < 3 then
        if n == 1 then
            print("\232\183\157\231\166\187\230\173\163\231\161\174\232\167\163\232\176\156\231\130\185\230\158\129\232\191\145")
            self:TryCameraMatch()
            self:CallDelay(1, self.Hint)
        end
    else
        if n == 1 then
            self:CallDelay(1, self.Hint)
        end
    end
end

function Quest11022:PuzzleVanish()
    print("Now Bright changes to  " .. n3)
    globalActor:UnSpawn("GuidePuzzle")
    local entityHandler = actorMgr:GetEntityHandler("Q11022VisualPuzzle01")
    local v = n3
    if -0.2 < v then
        self:SetEntityMaterialPropValue(entityHandler, 1, n3)
        n3 = n3 - 0.25
    end

    self:CallDelay(0.1, self.PuzzleVanishCtrl)
end

function Quest11022:PuzzleVanishCtrl()
    local v = n3
    if -0.2 < v then
        self:PuzzleVanish()
    end
end

function Quest11022:Hint01()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(3, "Q11022VP").pos
    local dist = M.Dist(pos, avatarPos)
    local entityHandler = actorMgr:GetEntityHandler("Q11022VisualPuzzle01")
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    local n = 0
    for i = 1, 3 do
        tbl[i].posA = clientData.Ray[i].posA - cameraPos
        tbl[i].posB = clientData.Ray[i].posB - cameraPos
        v[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
        if v[i] < 15 then
            if 3 < v[i] then
                n = n + 4.5 / v[i]
            end
        else
            if v[i] < 4.5 then
                n = n + 1
            else
                n = n + 0.3
            end
        end
    end

    if self:GetSubQuestState(1102203) ~= 3 then
        if 3 < dist and dist < 20 then
            local n2 = 6 * (3 / dist + n) / 4
            self:SetEntityMaterialPropValue(entityHandler, 1, n2)
            self:CallDelay(0.2, self.Hint01)
        elseif dist < 3 then
            local n2 = 6 * n / 3
            self:SetEntityMaterialPropValue(entityHandler, 1, n2)
            self:CallDelay(0.2, self.Hint01)
        else
            self:CallDelay(0.2, self.Hint01)
        end
    end
end

function Quest11022:TryCameraMatch()
    local compareEuler = false
    local flag = false
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    print("\231\155\184\230\156\186\228\189\141\231\189\174\229\189\147\229\137\141\228\184\186" .. "x is" .. cameraPos.x .. "y is" .. cameraPos.y .. "z is" .. cameraPos.z)
    for i = 1, 3 do
        print("\230\175\148\232\190\131\228\189\141\231\189\174")
        n2 = 1
        tbl[i].posA = clientData.Ray[i].posA - cameraPos
        tbl[i].posB = clientData.Ray[i].posB - cameraPos
        v[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
        if 4.5 < v[i] then
            print("\231\172\172" .. i .. "\230\172\161" .. "\232\167\146\229\186\166\228\184\128\229\164\167\228\186\1424.5    " .. v[i])
            n2 = 0
            break
        else
            print("\231\172\172" .. i .. "\230\172\161" .. "\232\167\146\229\186\166\228\184\128\229\176\143\228\186\1424.5    " .. v[i])
        end
    end

    if n2 == 1 then
        print("\230\175\148\232\190\131\231\155\184\230\156\186")
        compareEuler = M.CompareEuler(cameraEuler, clientData.CameraData.rot, 77)
    end

    if compareEuler == true then
        print("\233\166\150\230\172\161\229\140\185\233\133\141\230\136\144\229\138\159")
        self:CallDelay(0.6, function(arg1)
            print("\229\134\141\230\172\161\230\175\148\232\190\131\231\155\184\230\156\186")
            local cameraPos = arg1:GetCameraPos()
            local cameraEuler = arg1:GetCameraEuler()
            for i = 1, 3 do
                print("\230\175\148\232\190\131\228\189\141\231\189\174")
                n2 = 1
                tbl[i].posA = clientData.Ray[i].posA - cameraPos
                tbl[i].posB = clientData.Ray[i].posB - cameraPos
                v[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
                if 4.5 < v[i] then
                    print("\232\167\146\229\186\166\228\186\140\229\164\167\228\186\1424.5")
                    n2 = 0
                    break
                end
            end

            if n2 == 1 then
                flag = M.CompareEuler(cameraEuler, clientData.CameraData.rot, 20)
                local forwardAngle = M.ForwardAngle(cameraEuler, clientData.CameraData.rot)
                print("\230\172\167\230\139\137\232\167\146\231\155\184\230\156\186\229\183\174\228\184\186" .. forwardAngle)
            end

            if flag == true then
                print("\229\134\141\230\172\161\229\140\185\233\133\141\230\136\144\229\138\159")
                arg1:PlayEffect("Eff_SceneObj_Xiangmoyin_Hint", sceneData:GetDummyPoint(3, "Q11022Effect").pos)
                globalActor:EnablePlayerInput(false)
                arg1:CallDelay(1, function()
                    globalActor:EnablePlayerInput(true)
                    n = 0
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        actor:FinishQuestID(false, 1102203)
                    end
                end)
            else
                compareEuler = false
            end
        end)
    end
end

function Quest11022:OnSubStart1102201(arg1)
    print("OnSubStart1102201")
    self:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10302Data.id, 0)
    actorMgr:CreateActorWithPos("Q1102201Trigger", "Actor/Gadget/Q1102201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q11022Gad1").pos, sceneData:GetDummyPoint(3, "Q11022Gad1").rot, true, false, 3)
end

function Quest11022:OnSubFinish1102201(arg1)
    print("OnSubFinish1102201")
end

function Quest11022:OnSubFailed1102201(arg1)
    print("OnSubFailed1102201")
end

function Quest11022:OnSubStart1102202(arg1)
    print("OnSubStart1102202")
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10302Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc10232Data.alias)
    end)
end

function Quest11022:OnSubFinish1102202(arg1)
    print("OnSubFinish1102202")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor("Paimon", 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10302Data.alias, 3)
    end)
end

function Quest11022:OnSubFailed1102202(arg1)
    print("OnSubFailed1102202")
end

function Quest11022:OnSubStart1102208(arg1)
    print("OnSubStart1102208")
    self:UnSpawn("Q11022VisualPuzzle01")
    self:CallDelay(0.5, function(arg1_2)
        arg1_2:SpawnGadget(arg1, 70710216)
    end)

    actorMgr:CreateActorWithPos(datas.Q1102203Trigger_.alias, datas.Q1102203Trigger_.script, datas.Q1102203Trigger_.id, 0, datas.Q1102203Trigger_.point.pos, datas.Q1102203Trigger_.point.rot, true, false, 3)
end

function Quest11022:OnSubStart1102203(arg1)
    print("OnSubStart1102203")
    n = 1
    self:CallDelay(0.1, function(arg1_2)
        arg1_2:SpawnGadget(arg1, 70710058)
        arg1_2:Hint()
        arg1_2:Hint01()
    end)
end

function Quest11022:OnSubFinish1102203(arg1)
    print("OnSubFinish1102203")
    self:CallDelay(1.5, self.NarratorVisual)
    self:CallDelay(0.7, self.PuzzleVanish)
end

function Quest11022:OnSubFailed1102203(arg1)
    print("OnSubFailed1102203")
end

function Quest11022:OnSubStart1102207(arg1)
    print("OnSubStart1102207")
    actorMgr:CreateActorWithPos(datas.Q1102207Trigger_.alias, datas.Q1102207Trigger_.script, datas.Q1102207Trigger_.id, 0, datas.Q1102207Trigger_.point.pos, datas.Q1102207Trigger_.point.rot, true, false, 3)
end

function Quest11022:OnSubFinish1102207(arg1)
    print("OnSubFinish1102207")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor("Paimon", 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10302Data.alias, 3)
    end)

    globalActor:UnSpawn("GuidePuzzle")
    globalActor:UnSpawn("Q11022VisualPuzzle")
end

function Quest11022:OnSubFailed1102207(arg1)
    print("OnSubFailed1102207")
end

function Quest11022:OnSubStart1102204(arg1)
    print("OnSubStart1102204")
end

function Quest11022:OnSubFinish1102204(arg1)
    print("OnSubFinish1102204")
end

function Quest11022:OnSubFailed1102204(arg1)
    print("OnSubFailed1102204")
end

function Quest11022:OnSubStart1102205(arg1)
    print("OnSubStart1102205")
    self:CallDelay(2, self.SceneLook)
    self:CallDelay(4, self.NarratorUnlock)
    self:FinishQuest1102205()
end

function Quest11022:OnSubFinish1102205(arg1)
    print("OnSubFinish1102205")
end

function Quest11022:OnSubFailed1102205(arg1)
    print("OnSubFailed1102205")
end

function Quest11022:OnSubStart1102206(arg1)
    print("OnSubStart1102206")
    actorMgr:CreateActorWithPos("Q1102206Trigger", "Actor/Gadget/Q1102206Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q11022ZL3").pos, sceneData:GetDummyPoint(3, "Q11022ZL3").rot, true, false, 3)
end

function Quest11022:OnSubFinish1102206(arg1)
    print("OnSubFinish1102206")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10302Data.alias, 3)
        arg1:DestroyQuestNpcActor("Paimon", 3)
    end)
end

function Quest11022:OnSubFailed1102206(arg1)
    print("OnSubFailed1102206")
end

function Quest11022:InvokeOnInteraction(arg1)
    if arg1 == 21 then
        print("Now Spawn FB")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1102209)
        end
    end
end

return Quest11022
