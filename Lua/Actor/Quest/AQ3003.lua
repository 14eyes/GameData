require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3003 = class("Quest3003", QuestActorProxy)
Quest3003.defaultAlias = "Quest3003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local points
local datas

function Quest3003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    points = clientData.Points
    datas = clientData.Datas
end

function Quest3003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["300301"] = self.OnSubStart300301,
        ["300302"] = self.OnSubStart300302,
        ["300303"] = self.OnSubStart300303,
        ["300304"] = self.OnSubStart300304,
        ["300312"] = self.OnSubStart300312,
        ["300315"] = self.OnSubStart300315,
        ["300316"] = self.OnSubStart300316,
        ["300317"] = self.OnSubStart300317,
        ["300321"] = self.OnSubStart300321,
        ["300318"] = self.OnSubStart300318,
        ["300313"] = self.OnSubStart300313,
        ["300314"] = self.OnSubStart300314,
        ["300305"] = self.OnSubStart300305,
        ["300306"] = self.OnSubStart300306,
        ["300307"] = self.OnSubStart300307,
        ["300319"] = self.OnSubStart300319,
        ["300308"] = self.OnSubStart300308,
        ["300309"] = self.OnSubStart300309,
        ["300320"] = self.OnSubStart300320,
        ["300310"] = self.OnSubStart300310,
        ["300311"] = self.OnSubStart300311
    }
end

function Quest3003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["300301"] = self.OnSubFinish300301,
        ["300302"] = self.OnSubFinish300302,
        ["300303"] = self.OnSubFinish300303,
        ["300304"] = self.OnSubFinish300304,
        ["300312"] = self.OnSubFinish300312,
        ["300315"] = self.OnSubFinish300315,
        ["300316"] = self.OnSubFinish300316,
        ["300317"] = self.OnSubFinish300317,
        ["300321"] = self.OnSubFinish300321,
        ["300318"] = self.OnSubFinish300318,
        ["300313"] = self.OnSubFinish300313,
        ["300314"] = self.OnSubFinish300314,
        ["300305"] = self.OnSubFinish300305,
        ["300306"] = self.OnSubFinish300306,
        ["300307"] = self.OnSubFinish300307,
        ["300319"] = self.OnSubFinish300319,
        ["300308"] = self.OnSubFinish300308,
        ["300309"] = self.OnSubFinish300309,
        ["300320"] = self.OnSubFinish300320,
        ["300310"] = self.OnSubFinish300310,
        ["300311"] = self.OnSubFinish300311
    }
end

function Quest3003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3003:Start()
    print("Start")
end

function Quest3003:OnDestroy()
    print("OnDestroy")
end

function Quest3003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3003:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest3003:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest3003:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest3003:AdjustCamRefPos(arg1)
    local cameraDistanceRatio = actorUtils.GetCameraDistanceRatio()
    if 0 < cameraDistanceRatio then
        local tbl = {x = 439.089, y = 67.074, z = 374.654}
        return {
            x = (1 - cameraDistanceRatio) * arg1.x + cameraDistanceRatio * tbl.x,
            y = (1 - cameraDistanceRatio) * arg1.y + cameraDistanceRatio * tbl.y,
            z = (1 - cameraDistanceRatio) * arg1.z + cameraDistanceRatio * tbl.z
        }
    end

    return arg1
end

function Quest3003:TryCameraMatch()
    print("TryCameraMatch")
    local compareEuler = false
    local flag = false
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    print("\231\155\184\230\156\186\228\189\141\231\189\174\229\189\147\229\137\141\228\184\186" .. "x is" .. cameraPos.x .. "y is" .. cameraPos.y .. "z is" .. cameraPos.z)
    local adjustCamRefPos = self:AdjustCamRefPos(datas.Ray[1].posB)
    for i = 1, 3 do
        print("\230\175\148\232\190\131\228\189\141\231\189\174")
        datas.match_flag = 1
        datas.vec[i].posA = datas.Ray[i].posA - cameraPos
        datas.vec[i].posB = {
            x = adjustCamRefPos.x + (datas.Ray[i].posA.x - adjustCamRefPos.x) / 6 * 1 - cameraPos.x,
            y = adjustCamRefPos.y + (datas.Ray[i].posA.y - adjustCamRefPos.y) / 6 * 1 - cameraPos.y,
            z = adjustCamRefPos.z + (datas.Ray[i].posA.z - adjustCamRefPos.z) / 6 * 1 - cameraPos.z
        }

        datas.angle[i] = M.ForwardAngle(datas.vec[i].posA, datas.vec[i].posB)
        if 6 < datas.angle[i] then
            print("\231\172\172" .. i .. "\230\172\161" .. "\232\167\146\229\186\166\228\184\128\229\164\167\228\186\1426    " .. datas.angle[i])
            datas.match_flag = 0
            break
        else
            print("\231\172\172" .. i .. "\230\172\161" .. "\232\167\146\229\186\166\228\184\128\229\176\143\228\186\1426    " .. datas.angle[i])
        end
    end

    if datas.match_flag == 1 then
        print("\230\175\148\232\190\131\231\155\184\230\156\186")
        compareEuler = M.CompareEuler(cameraEuler, points.CameraData.rot, 40)
    end

    if compareEuler == true then
        print("\233\166\150\230\172\161\229\140\185\233\133\141\230\136\144\229\138\159")
        self:CallDelay(0.6, function(arg1)
            print("\229\134\141\230\172\161\230\175\148\232\190\131\231\155\184\230\156\186")
            local cameraPos = arg1:GetCameraPos()
            local cameraEuler = arg1:GetCameraEuler()
            local adjustCamRefPos = arg1:AdjustCamRefPos(datas.Ray[1].posB)
            for i = 1, 3 do
                print("\230\175\148\232\190\131\228\189\141\231\189\174")
                datas.match_flag = 1
                datas.vec[i].posA = datas.Ray[i].posA - cameraPos
                datas.vec[i].posB = {
                    x = adjustCamRefPos.x + (datas.Ray[i].posA.x - adjustCamRefPos.x) / 6 * 1 - cameraPos.x,
                    y = adjustCamRefPos.y + (datas.Ray[i].posA.y - adjustCamRefPos.y) / 6 * 1 - cameraPos.y,
                    z = adjustCamRefPos.z + (datas.Ray[i].posA.z - adjustCamRefPos.z) / 6 * 1 - cameraPos.z
                }

                datas.angle[i] = M.ForwardAngle(datas.vec[i].posA, datas.vec[i].posB)
                if 6 < datas.angle[i] then
                    print("\232\167\146\229\186\166\228\186\140\229\164\167\228\186\1426")
                    datas.match_flag = 0
                    break
                end
            end

            if datas.match_flag == 1 then
                flag = M.CompareEuler(cameraEuler, points.CameraData.rot, 40)
                local forwardAngle = M.ForwardAngle(cameraEuler, points.CameraData.rot)
                print("\230\172\167\230\139\137\232\167\146\231\155\184\230\156\186\229\183\174\228\184\186" .. forwardAngle)
            end

            if flag == true then
                print("\229\134\141\230\172\161\229\140\185\233\133\141\230\136\144\229\138\159")
                local entityHandler = actorMgr:GetEntityHandler("Gadget70290547")
                local v = actorMgr:GetEntityHandler("Gadget70290548")
                arg1:SetEntityMaterialPropValue(entityHandler, 1, 10)
                arg1:SetEntityMaterialPropValue(v, 1, 10)
                arg1:PlayEffect("Eff_SceneObj_Xiangmoyin_Hint", sceneData:GetDummyPoint(20132, "Q300321_Rock01").pos)
                globalActor:EnablePlayerInput(false)
                arg1:CallDelay(1, function()
                    globalActor:EnablePlayerInput(true)
                    datas.check_flag = 0
                    print("=========\231\187\147\230\157\159\230\160\135\232\174\176===========")
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        actor:FinishQuestID(false, 300321)
                    end
                end)
            else
                compareEuler = false
            end
        end)
    end
end

function Quest3003:HintArea01()
    print("HintArea01")
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(20132, "Q300321_Dungeon_VPPlayer").pos
    local dist = M.Dist(pos, avatarPos)
    local subQuestState = self:GetSubQuestState(300321)
    print(" \228\187\187\229\138\161\229\174\140\230\136\144\230\131\133\229\134\181 q300321state" .. subQuestState)
    if subQuestState == 2 then
        print("\228\187\187\229\138\161\231\138\182\230\128\129\230\173\163\231\161\174")
        if dist < 3 then
            if datas.check_flag == 1 then
                print("\232\183\157\231\166\187\230\173\163\231\161\174\232\167\163\232\176\156\231\130\185\230\158\129\232\191\145")
                self:TryCameraMatch()
                self:CallDelay(1, self.HintArea01)
                print("currLen<3\230\151\182\232\191\155\229\133\165")
            end
        else
            if datas.check_flag == 1 then
                self:CallDelay(1, self.HintArea01)
                print("currLen>3\230\151\182\232\191\155\229\133\165")
            end
        end
    else
        print("\228\187\187\229\138\161\231\138\182\230\128\129\233\148\153\232\175\175")
    end
end

function Quest3003:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 30030901 then
        globalActor:ChangeDay24Time(22, true)
        actorUtils.FinishQuestID(false, 300320)
    elseif arg1 == 30030902 then
        globalActor:ChangeDay24Time(8, true)
    elseif arg1 == 30030701 then
        actorUtils.FinishQuestID(false, 300319)
    end
end

function Quest3003:HintArea02()
    print("HintArea02")
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(20132, "Q300321_Dungeon_VPPlayer").pos
    local dist = M.Dist(pos, avatarPos)
    local entityHandler = actorMgr:GetEntityHandler("Gadget70290547")
    local v = actorMgr:GetEntityHandler("Gadget70290548")
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    local n = 0
    local adjustCamRefPos = self:AdjustCamRefPos(datas.Ray[1].posB)
    for i = 1, 3 do
        print("\232\167\146\229\186\166\230\142\167\229\136\182\228\186\174\229\186\166")
        datas.vec[i].posA = datas.Ray[i].posA - cameraPos
        datas.vec[i].posB = {
            x = adjustCamRefPos.x + (datas.Ray[i].posA.x - adjustCamRefPos.x) / 6 * 1 - cameraPos.x,
            y = adjustCamRefPos.y + (datas.Ray[i].posA.y - adjustCamRefPos.y) / 6 * 1 - cameraPos.y,
            z = adjustCamRefPos.z + (datas.Ray[i].posA.z - adjustCamRefPos.z) / 6 * 1 - cameraPos.z
        }

        datas.angle[i] = M.ForwardAngle(datas.vec[i].posA, datas.vec[i].posB)
        if datas.angle[i] < 15 then
            if 5 < datas.angle[i] then
                print("\228\186\174\229\186\166\232\167\146\229\186\166\229\164\167\228\186\1425\228\189\134\229\176\143\228\186\14215")
                n = n + 6 / datas.angle[i]
            end
        else
            if datas.angle[i] < 5 then
                print("\228\186\174\229\186\166\232\167\146\229\186\166\229\176\143\228\186\1425")
                n = n + 1
            else
                n = n + 0.4
            end
        end
    end

    local subQuestState = self:GetSubQuestState(300321)
    print(" \228\187\187\229\138\161\229\174\140\230\136\144\230\131\133\229\134\181 q300321state" .. subQuestState)
    if subQuestState ~= 3 then
        print("\232\167\134\232\167\146\232\167\163\232\176\156\230\156\170\229\174\140\230\136\144\232\191\135")
        if 3 < dist and dist < 20 then
            local n2 = 6 * (3 / dist + n) / 4
            self:SetEntityMaterialPropValue(entityHandler, 1, n2)
            self:SetEntityMaterialPropValue(v, 1, n2)
            self:CallDelay(0.2, self.HintArea02)
        elseif dist < 3 then
            local n2 = 6 * n / 3
            self:SetEntityMaterialPropValue(entityHandler, 1, n2)
            self:SetEntityMaterialPropValue(v, 1, n2)
            self:CallDelay(0.2, self.HintArea02)
        else
            self:CallDelay(0.2, self.HintArea02)
        end
    end
end

function Quest3003:OnSubStart300301(arg1)
    print("OnSubStart300301")
    self:CreateQuestNpc(arg1, npcs.Npc12554Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q300301Trigger", "Actor/Gadget/Q300301Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q300301_guide").pos, sceneData:GetDummyPoint(3, "Q300301_guide").rot, true, false, 3)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:ActorDestroy("Q300316Trigger1")
    self:ActorDestroy("Q300317Trigger1")
    self:ActorDestroy("Q300321Trigger")
    self:ActorDestroy("Q300321Trigger1")
    self:EnablePlayerInput(true)
    self:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuestNoMoveEvent")
end

function Quest3003:OnSubFinish300301(arg1)
    print("OnSubFinish300301")
    self:SafeDestroyQuestNpc(npcs.Npc12554Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12557Data.alias, 3)
end

function Quest3003:OnSubStart300302(arg1)
    print("OnSubStart300302")
    globalActor:PlayerEnterDungeon(594, 1149, true, nil, 0)
end

function Quest3003:OnSubFinish300302(arg1)
    print("OnSubFinish300302")
end

function Quest3003:OnSubStart300303(arg1)
    print("OnSubStart300303")
    self:NpcCreateWithTriggerBlack(npcs.Npc12554Data.id, 300303, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300303(arg1)
    print("OnSubFinish300303")
end

function Quest3003:OnSubStart300304(arg1)
    print("OnSubStart300304")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 300304, 3)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300304(arg1)
    print("OnSubFinish300304")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest3003:OnSubStart300312(arg1)
    print("OnSubStart300312")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q300312Trigger1", "Actor/Gadget/Q300312Trigger1", 70900002, 0, {x = 458.996, y = 13.55, z = 496.857}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20132)
    actorMgr:CreateActorWithPos("Q300312Trigger2", "Actor/Gadget/Q300312Trigger2", 70900002, 0, sceneData:GetDummyPoint(20132, "Q300312_guide2").pos, sceneData:GetDummyPoint(20132, "Q300312_guide2").rot, true, false, 20132)
    actorMgr:CreateActorWithPos("Q300312Trigger3", "Actor/Gadget/Q300312Trigger3", 70900002, 0, sceneData:GetDummyPoint(20132, "Q300312_guide3").pos, sceneData:GetDummyPoint(20132, "Q300312_guide3").rot, true, false, 20132)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300312(arg1)
    print("OnSubFinish300312")
    self:NarratorOnlyTaskByData(datas.NarratorWithId300301)
    globalActor:StopLocalAvatar()
    self:EnablePlayerInput(false)
    self:CallDelay(2, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnterSceneLookCamera({x = 448.222, y = 59.264, z = 467.573}, 0, 2, true, true)
    self:ActorDestroy("Q300312Trigger1")
    self:ActorDestroy("Q300312Trigger2")
    self:ActorDestroy("Q300312Trigger3")
end

function Quest3003:OnSubStart300315(arg1)
    print("OnSubStart300315")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q300315Trigger", "Actor/Gadget/Q300315Trigger", 70900002, 0, {x = 490.728, y = 38.472, z = 452.466}, {x = 0.0, y = 329.687, z = 0.0}, true, false, 20132)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    self:CallDelay(6, function(arg1)
        arg1:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuestNoMoveEvent")
    end)

    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300315(arg1)
    print("OnSubFinish300315")
end

function Quest3003:OnSubStart300316(arg1)
    print("OnSubStart300316")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q300316Trigger", "Actor/Gadget/Q300316Trigger", 70900002, 0, {x = 502.366, y = 23.294, z = 475.228}, {x = 0.0, y = 268.931, z = 0.0}, true, false, 20132)
    actorMgr:CreateActorWithPos("Q300316Trigger1", "Actor/Gadget/Q300316Trigger1", 70900002, 0, {x = 481.933, y = 35.997, z = 465.125}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20132)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    self:CallDelay(6, function(arg1)
        arg1:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuestNoMoveEvent")
    end)

    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300316(arg1)
    print("OnSubFinish300316")
    self:ActorDestroy("Q300316Trigger1")
end

function Quest3003:OnSubStart300317(arg1)
    print("OnSubStart300317")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q300317Trigger", "Actor/Gadget/Q300317Trigger", 70900002, 0, {x = 449.692, y = 65.195, z = 441.736}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20132)
    actorMgr:CreateActorWithPos("Q300317Trigger1", "Actor/Gadget/Q300317Trigger1", 70900002, 0, {x = 490.733, y = 35.651, z = 454.682}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20132)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    self:CallDelay(6, function(arg1)
        arg1:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuestNoMoveEvent")
    end)

    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300317(arg1)
    print("OnSubFinish300317")
    self:ActorDestroy("Q300321Trigger1")
    self:ActorDestroy("Q300317Trigger1")
end

function Quest3003:OnSubStart300321(arg1)
    print("OnSubStart300321")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:UnSpawn(gadgets.Gadget70290547Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70290547Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70290548Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70290548Data.id, 2, 0)
    datas.check_flag = 1
    self:HintArea01()
    self:HintArea02()
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q300321Trigger", "Actor/Gadget/Q300321Trigger", 70900002, 0, {x = 447.67, y = 59.795, z = 455.564}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20132)
    actorMgr:CreateActorWithPos("Q300321Trigger1", "Actor/Gadget/Q300321Trigger1", 70900002, 0, sceneData:GetDummyPoint(20132, "Q300321_Dungeon_VPPlayer").pos, sceneData:GetDummyPoint(20132, "Q300321_Dungeon_VPPlayer").rot, true, false, 20132)
end

function Quest3003:OnSubFinish300321(arg1)
    print("OnSubFinish300321")
    actorUtils.SetPostEffect("PostEffect_Scene_WorldTreeDungeon", true)
    self:CallDelay(5, function(arg1)
        actorUtils.SetPostEffect("PostEffect_Scene_WorldTreeDungeon", false)
    end)

    self:ActorDestroy("Q300321Trigger")
end

function Quest3003:OnSubStart300318(arg1)
    print("OnSubStart300318")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q300318Trigger", "Actor/Gadget/Q300318Trigger", 70900002, 0, {x = 492.445, y = 89.872, z = 384.836}, {x = 0.0, y = 90.785, z = 0.0}, true, false, 20132)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    self:CallDelay(6, function(arg1)
        arg1:DisableMainPageWithConfig(false, "DisableTestSumeruMainQuestNoMoveEvent")
    end)

    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300318(arg1)
    print("OnSubFinish300318")
    self:UnSpawn(gadgets.Gadget70290547Data.alias)
    self:UnSpawn(gadgets.Gadget70290548Data.alias)
end

function Quest3003:OnSubStart300313(arg1)
    print("OnSubStart300313")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12560Data.id, 1)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q300313Trigger", "Actor/Gadget/Q300313Trigger", 70900002, 0, {x = 519.636, y = 105.384, z = 372.302}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20132)
end

function Quest3003:OnSubFinish300313(arg1)
    print("OnSubFinish300313")
    self:SafeDestroyQuestNpc(npcs.Npc12560Data.alias, 20132)
end

function Quest3003:OnSubStart300314(arg1)
    print("OnSubStart300314")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300314(arg1)
    print("OnSubFinish300314")
end

function Quest3003:OnSubStart300305(arg1)
    print("OnSubStart300305")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12560Data.id, 1)
    actorMgr:CreateActorWithPos("Q300305Trigger", "Actor/Gadget/Q300305Trigger", 70900002, 0, sceneData:GetDummyPoint(20132, "Q300305_N12560").pos, sceneData:GetDummyPoint(20132, "Q300305_N12560").rot, true, false, 20132)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300305(arg1)
    print("OnSubFinish300305")
    self:TransmitPlayerWithTextById(arg1, 300305, datas.TextmapId300305, 0)
    self:SafeDestroyQuestNpc(npcs.Npc12560Data.alias, 20132)
end

function Quest3003:OnSubStart300306(arg1)
    print("OnSubStart300306")
    self:NpcCreateWithTrigger(npcs.Npc12554Data.id, 300306, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12554Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest3003:OnSubFinish300306(arg1)
    print("OnSubFinish300306")
    self:GetQuestNpcActor(npcs.Npc12554Data.alias):DisableInteeHeadCtrl(false)
    self:SafeDestroyQuestNpc(npcs.Npc12557Data.alias, 3)
end

function Quest3003:OnSubStart300307(arg1)
    print("OnSubStart300307")
    self:CreateQuestNpc(arg1, npcs.Npc12587Data.id, 1)
end

function Quest3003:OnSubFinish300307(arg1)
    print("OnSubFinish300307")
    self:SafeDestroyQuestNpc(npcs.Npc12587Data.alias, 3)
end

function Quest3003:OnSubStart300319(arg1)
    print("OnSubStart300319")
end

function Quest3003:OnSubFinish300319(arg1)
    print("OnSubFinish300319")
end

function Quest3003:OnSubStart300308(arg1)
    print("OnSubStart300308")
end

function Quest3003:OnSubFinish300308(arg1)
    print("OnSubFinish300308")
end

function Quest3003:OnSubStart300309(arg1)
    print("OnSubStart300309")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12554Data.id, 1, npcs.Npc12554Data.alias)
end

function Quest3003:OnSubFinish300309(arg1)
    print("OnSubFinish300309")
    self:SafeDestroyQuestNpc(npcs.Npc12557Data.alias, 3)
end

function Quest3003:OnSubStart300320(arg1)
    print("OnSubStart300320")
end

function Quest3003:OnSubFinish300320(arg1)
    print("OnSubFinish300320")
end

function Quest3003:OnSubStart300310(arg1)
    print("OnSubStart300310")
    self:CreateQuestNpc(arg1, npcs.Npc12554Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12556Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12561Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12868Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12869Data.id, 7)
    self:CreateQuestNpcWithTrigger("Q300310CreateQuestNPCWithTrigger", 300310, npcs.Npc1050Data.id, 2, 20)
end

function Quest3003:OnSubFinish300310(arg1)
    print("OnSubFinish300310")
    self:SafeDestroyQuestNpc(npcs.Npc12554Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12556Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12561Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12868Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12869Data.alias, 3)
end

function Quest3003:OnSubStart300311(arg1)
    print("OnSubStart300311")
    self:NpcCreateWithTrigger(npcs.Npc1051Data.id, 300311, 1)
end

function Quest3003:OnSubFinish300311(arg1)
    print("OnSubFinish300311")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

return Quest3003
