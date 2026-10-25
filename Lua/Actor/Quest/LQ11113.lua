require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11113 = class("Quest11113", QuestActorProxy)
Quest11113.defaultAlias = "Quest11113"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local npc10349Data
local npc10350Data
local npc10351Data
local npc10352Data
local npc10353Data
local tbl = {}
tbl[1] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
tbl[2] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
tbl[3] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
local v = {}
v[1] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
v[2] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
v[3] = {posA = {x = 0, y = 0, z = 0}, posB = {x = 0, y = 0, z = 0}}
local tbl2 = {}
local tbl3 = {}
local n = 0
local n2 = 0
local n3 = 0
local n4 = 0

function Quest11113:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
    npc10349Data = npcs.Npc10349Data
    npc10350Data = npcs.Npc10350Data
    npc10351Data = npcs.Npc10351Data
    npc10352Data = npcs.Npc10352Data
    npc10353Data = npcs.Npc10353Data
end

function Quest11113:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1111301"] = self.OnSubStart1111301,
        ["1111302"] = self.OnSubStart1111302,
        ["1111306"] = self.OnSubStart1111306,
        ["1111308"] = self.OnSubStart1111308,
        ["1111303"] = self.OnSubStart1111303,
        ["1111304"] = self.OnSubStart1111304,
        ["1111305"] = self.OnSubStart1111305,
        ["1111307"] = self.OnSubStart1111307
    }
end

function Quest11113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1111301"] = self.OnSubFinish1111301,
        ["1111302"] = self.OnSubFinish1111302,
        ["1111306"] = self.OnSubFinish1111306,
        ["1111308"] = self.OnSubFinish1111308,
        ["1111303"] = self.OnSubFinish1111303,
        ["1111304"] = self.OnSubFinish1111304,
        ["1111305"] = self.OnSubFinish1111305,
        ["1111307"] = self.OnSubFinish1111307
    }
end

function Quest11113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1111301"] = self.OnSubFailed1111301,
        ["1111302"] = self.OnSubFailed1111302,
        ["1111306"] = self.OnSubFailed1111306,
        ["1111308"] = self.OnSubFailed1111308,
        ["1111303"] = self.OnSubFailed1111303,
        ["1111304"] = self.OnSubFailed1111304,
        ["1111305"] = self.OnSubFailed1111305,
        ["1111307"] = self.OnSubFailed1111307
    }
end

function Quest11113:Start()
    print("Start")
end

function Quest11113:OnDestroy()
    print("OnDestroy")
end

function Quest11113:OnMainFinished(arg1)
    print("OnMainFinished")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11113:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest11113:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest11113:ClearData()
    print("ClearData")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11113:HintArea01()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(1059, "Q11113_Dungeon_VP101").pos
    local dist = M.Dist(pos, avatarPos)
    local subQuestState = self:GetSubQuestState(1111306)
    print(" \228\187\187\229\138\161\229\174\140\230\136\144\230\131\133\229\134\181 q1111306state" .. subQuestState)
    if subQuestState == 2 then
        print("\228\187\187\229\138\161\231\138\182\230\128\129\230\173\163\231\161\174")
        if dist < 3 then
            if n == 1 then
                print("\232\183\157\231\166\187\230\173\163\231\161\174\232\167\163\232\176\156\231\130\185\230\158\129\232\191\145")
                self:TryCameraMatch()
                self:CallDelay(1, self.HintArea01)
                print("currLen<3\230\151\182\232\191\155\229\133\165")
            end
        else
            if n == 1 then
                self:CallDelay(1, self.HintArea01)
                print("currLen>3\230\151\182\232\191\155\229\133\165")
            end
        end
    else
        print("\228\187\187\229\138\161\231\138\182\230\128\129\233\148\153\232\175\175")
    end
end

function Quest11113:HintArea02()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(1059, "Q11113_Dungeon_VP101").pos
    local dist = M.Dist(pos, avatarPos)
    local entityHandler = actorMgr:GetEntityHandler("Gadget70230031")
    local v = actorMgr:GetEntityHandler("Gadget70230032")
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    local n = 0
    for i = 1, 3 do
        print("\232\167\146\229\186\166\230\142\167\229\136\182\228\186\174\229\186\166")
        tbl[i].posA = clientData.Ray[i].posA - cameraPos
        tbl[i].posB = clientData.Ray[i].posB - cameraPos
        tbl2[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
        if tbl2[i] < 15 then
            if 3 < tbl2[i] then
                print("\228\186\174\229\186\166\232\167\146\229\186\166\229\164\167\228\186\1425\228\189\134\229\176\143\228\186\14215")
                n = n + 6 / tbl2[i]
            end
        else
            if tbl2[i] < 6 then
                print("\228\186\174\229\186\166\232\167\146\229\186\166\229\176\143\228\186\1423")
                n = n + 1
            else
                n = n + 0.4
            end
        end
    end

    local subQuestState = self:GetSubQuestState(1111306)
    print(" \228\187\187\229\138\161\229\174\140\230\136\144\230\131\133\229\134\181 q1111306state" .. subQuestState)
    if subQuestState == 2 then
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

function Quest11113:TryCameraMatch()
    n = 2
    local compareEuler = false
    local flag = false
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    print("\231\155\184\230\156\186\228\189\141\231\189\174\229\189\147\229\137\141\228\184\186" .. "x is" .. cameraPos.x .. "y is" .. cameraPos.y .. "z is" .. cameraPos.z)
    for i = 1, 3 do
        print("\230\175\148\232\190\131\228\189\141\231\189\174")
        n3 = 1
        tbl[i].posA = clientData.Ray[i].posA - cameraPos
        tbl[i].posB = clientData.Ray[i].posB - cameraPos
        tbl2[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
        if 6 < tbl2[i] then
            print("\231\172\172" .. i .. "\230\172\161" .. "\232\167\146\229\186\166\228\184\128\229\164\167\228\186\1426    " .. tbl2[i])
            n3 = 0
            n = 1
            break
        else
            print("\231\172\172" .. i .. "\230\172\161" .. "\232\167\146\229\186\166\228\184\128\229\176\143\228\186\1426    " .. tbl2[i])
        end
    end

    if n3 == 1 then
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
                n3 = 1
                tbl[i].posA = clientData.Ray[i].posA - cameraPos
                tbl[i].posB = clientData.Ray[i].posB - cameraPos
                tbl2[i] = M.ForwardAngle(tbl[i].posA, tbl[i].posB)
                if 6 < tbl2[i] then
                    print("\232\167\146\229\186\166\228\186\140\229\164\167\228\186\1426")
                    n3 = 0
                    n = 1
                    break
                end
            end

            if n3 == 1 then
                flag = M.CompareEuler(cameraEuler, clientData.CameraData.rot, 40)
                local forwardAngle = M.ForwardAngle(cameraEuler, clientData.CameraData.rot)
                print("\230\172\167\230\139\137\232\167\146\231\155\184\230\156\186\229\183\174\228\184\186" .. forwardAngle)
            end

            if flag == true then
                print("\229\134\141\230\172\161\229\140\185\233\133\141\230\136\144\229\138\159")
                arg1:PlayEffect("Eff_SceneObj_Xiangmoyin_Hint", sceneData:GetDummyPoint(1059, "Q11113_Dungeon_Effect01").pos)
                globalActor:EnablePlayerInput(false)
                arg1:CallDelay(0.5, function()
                    globalActor:EnablePlayerInput(true)
                    n = 0
                    print("\231\187\147\230\157\159\230\160\135\232\174\176" .. n)
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        actor:FinishQuestID(false, 1111306)
                    end
                end)
            else
                compareEuler = false
                n3 = 0
                n = 1
            end
        end)
    else
        n3 = 0
        n = 1
    end
end

function Quest11113:HintArea11()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(1059, "Q11113_Dungeon_VP201").pos
    local dist = M.Dist(pos, avatarPos)
    local subQuestState = self:GetSubQuestState(1111308)
    print(" \228\187\187\229\138\161\229\174\140\230\136\144\230\131\133\229\134\181 q1111308state" .. subQuestState)
    if subQuestState == 2 then
        if dist < 3 then
            if n2 == 1 then
                print("\232\183\157\231\166\187\230\173\163\231\161\174\232\167\163\232\176\156\231\130\185\230\158\129\232\191\145")
                self:TryCameraMatch1()
                self:CallDelay(1, self.HintArea11)
                print("currLen<3\230\151\182\232\191\155\229\133\165")
            end
        else
            if n2 == 1 then
                self:CallDelay(1, self.HintArea11)
                print("currLen>3\230\151\182\232\191\155\229\133\165")
            end
        end
    else
        print("\228\187\187\229\138\161\231\138\182\230\128\129\233\148\153\232\175\175")
    end
end

function Quest11113:HintArea22()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = sceneData:GetDummyPoint(1059, "Q11113_Dungeon_VP201").pos
    local dist = M.Dist(pos, avatarPos)
    local entityHandler = actorMgr:GetEntityHandler("Gadget70230033")
    local entityHandler2 = actorMgr:GetEntityHandler("Gadget70230034")
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    local n = 0
    for i = 1, 3 do
        v[i].posA = clientData.Ray1[i].posA - cameraPos
        v[i].posB = clientData.Ray1[i].posB - cameraPos
        tbl3[i] = M.ForwardAngle(v[i].posA, v[i].posB)
        if tbl3[i] < 15 then
            if 3 < tbl3[i] then
                n = n + 6 / tbl3[i]
            end
        else
            if tbl3[i] < 6 then
                n = n + 1
            else
                n = n + 0.4
            end
        end
    end

    if self:GetSubQuestState(1111308) == 2 then
        if 3 < dist and dist < 20 then
            local n2 = 6 * (3 / dist + n) / 4
            self:SetEntityMaterialPropValue(entityHandler, 1, n2)
            self:SetEntityMaterialPropValue(entityHandler2, 1, n2)
            self:CallDelay(0.2, self.HintArea22)
        elseif dist < 3 then
            local n2 = 6 * n / 3
            self:SetEntityMaterialPropValue(entityHandler, 1, n2)
            self:SetEntityMaterialPropValue(entityHandler2, 1, n2)
            self:CallDelay(0.2, self.HintArea22)
        else
            self:CallDelay(0.2, self.HintArea22)
        end
    end
end

function Quest11113:TryCameraMatch1()
    n2 = 2
    local compareEuler = false
    local flag = false
    local cameraPos = self:GetCameraPos()
    local cameraEuler = self:GetCameraEuler()
    print("\231\155\184\230\156\186\228\189\141\231\189\174\229\189\147\229\137\141\228\184\186" .. "x is" .. cameraPos.x .. "y is" .. cameraPos.y .. "z is" .. cameraPos.z)
    for i = 1, 3 do
        print("\230\175\148\232\190\131\228\189\141\231\189\174")
        n4 = 1
        v[i].posA = clientData.Ray1[i].posA - cameraPos
        v[i].posB = clientData.Ray1[i].posB - cameraPos
        tbl3[i] = M.ForwardAngle(v[i].posA, v[i].posB)
        if 6 < tbl3[i] then
            print("\231\172\172" .. i .. "\230\172\161" .. "\232\167\146\229\186\166\228\184\128\229\164\167\228\186\1426    " .. tbl3[i])
            n4 = 0
            n2 = 1
            break
        else
            print("\231\172\172" .. i .. "\230\172\161" .. "\232\167\146\229\186\166\228\184\128\229\176\143\228\186\1426    " .. tbl3[i])
        end
    end

    if n4 == 1 then
        print("\230\175\148\232\190\131\231\155\184\230\156\186")
        compareEuler = M.CompareEuler(cameraEuler, clientData.CameraData1.rot, 77)
    end

    if compareEuler == true then
        print("\233\166\150\230\172\161\229\140\185\233\133\141\230\136\144\229\138\159")
        self:CallDelay(0.6, function(arg1)
            print("\229\134\141\230\172\161\230\175\148\232\190\131\231\155\184\230\156\186")
            local cameraPos = arg1:GetCameraPos()
            local cameraEuler = arg1:GetCameraEuler()
            for i = 1, 3 do
                print("\230\175\148\232\190\131\228\189\141\231\189\174")
                n4 = 1
                v[i].posA = clientData.Ray1[i].posA - cameraPos
                v[i].posB = clientData.Ray1[i].posB - cameraPos
                tbl3[i] = M.ForwardAngle(v[i].posA, v[i].posB)
                if 6 < tbl3[i] then
                    print("\232\167\146\229\186\166\228\186\140\229\164\167\228\186\1426")
                    n4 = 0
                    n2 = 1
                    break
                end
            end

            print("\232\183\179\229\135\186\230\163\128\230\181\139" .. n4)
            if n4 == 1 then
                flag = M.CompareEuler(cameraEuler, clientData.CameraData1.rot, 40)
                local forwardAngle = M.ForwardAngle(cameraEuler, clientData.CameraData1.rot)
                print("\230\172\167\230\139\137\232\167\146\231\155\184\230\156\186\229\183\174\228\184\186" .. forwardAngle)
            end

            if flag == true then
                print("\229\134\141\230\172\161\229\140\185\233\133\141\230\136\144\229\138\159")
                arg1:PlayEffect("Eff_SceneObj_Xiangmoyin_Hint", sceneData:GetDummyPoint(1059, "Q11113_Dungeon_Effect02").pos)
                globalActor:EnablePlayerInput(false)
                arg1:CallDelay(0.5, function()
                    globalActor:EnablePlayerInput(true)
                    n2 = 0
                    print("\231\187\147\230\157\159\230\160\135\232\174\176" .. n2)
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        actor:FinishQuestID(false, 1111308)
                    end
                end)
            else
                compareEuler = false
                n4 = 0
                n2 = 1
            end
        end)
    else
        n4 = 0
        n2 = 1
    end
end

function Quest11113:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param1111111")
        self:GetQuestNpcActor(npc10349Data.alias):DestroyWithDither(false, 1)
        self:GetQuestNpcActor(npc10350Data.alias):DestroyWithDither(false, 1)
        self:GetQuestNpcActor(npc10351Data.alias):DestroyWithDither(false, 1)
        self:GetQuestNpcActor(npc10352Data.alias):DestroyWithDither(false, 1)
        self:GetQuestNpcActor(npc10353Data.alias):DestroyWithDither(false, 1)
    elseif arg1 == 2 then
    end
end

function Quest11113:OnSubStart1111301(arg1)
    print("OnSubStart1111301")
    self:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10343Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10344Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10346Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10347Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc10348Data.id, 6)
end

function Quest11113:OnSubFinish1111301(arg1)
    print("OnSubFinish1111301")
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10343Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10344Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10346Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10347Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10348Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11113:OnSubFailed1111301(arg1)
    print("OnSubFailed1111301")
end

function Quest11113:OnSubStart1111302(arg1)
    print("OnSubStart1111302")
end

function Quest11113:OnSubFinish1111302(arg1)
    print("OnSubFinish1111302")
end

function Quest11113:OnSubFailed1111302(arg1)
    print("OnSubFailed1111302")
end

function Quest11113:OnSubStart1111306(arg1)
    print("OnSubStart1111306")
    n = 1
    print("\228\187\187\229\138\161\229\188\128\229\167\139" .. n)
    self:CallDelay(0.1, function(arg1_2)
        arg1_2:UnSpawn(gadgets.Gadget70230031Data.alias)
        arg1_2:DelaySpawnGadget(arg1, gadgets.Gadget70230031Data.id, 1, 0)
        arg1_2:UnSpawn(gadgets.Gadget70230032Data.alias)
        arg1_2:DelaySpawnGadget(arg1, gadgets.Gadget70230032Data.id, 2, 0)
        arg1_2:HintArea01()
        print("\228\187\187\229\138\161\229\188\128\229\167\139\230\151\182\232\191\155\229\133\165")
        arg1_2:HintArea02()
    end)
end

function Quest11113:OnSubFinish1111306(arg1)
    print("OnSubFinish1111306")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
end

function Quest11113:OnSubFailed1111306(arg1)
    print("OnSubFailed1111306")
end

function Quest11113:OnSubStart1111308(arg1)
    print("OnSubStart1111308")
    n2 = 1
    print("\228\187\187\229\138\161\229\188\128\229\167\139" .. n2)
    self:CallDelay(0.1, function(arg1_2)
        arg1_2:UnSpawn(gadgets.Gadget70230033Data.alias)
        arg1_2:DelaySpawnGadget(arg1, gadgets.Gadget70230033Data.id, 1, 0)
        arg1_2:UnSpawn(gadgets.Gadget70230034Data.alias)
        arg1_2:DelaySpawnGadget(arg1, gadgets.Gadget70230034Data.id, 2, 0)
        arg1_2:HintArea11()
        print("\228\187\187\229\138\161\229\188\128\229\167\139\230\151\182\232\191\155\229\133\165")
        arg1_2:HintArea22()
    end)
end

function Quest11113:OnSubFinish1111308(arg1)
    print("OnSubFinish1111308")
end

function Quest11113:OnSubFailed1111308(arg1)
    print("OnSubFailed1111308")
end

function Quest11113:OnSubStart1111303(arg1)
    print("OnSubStart1111303")
    actorMgr:CreateActorWithPos(datas.Q11113Trigger_Jump_.alias, datas.Q11113Trigger_Jump_.script, datas.Q11113Trigger_Jump_.id, 0, datas.Q11113Trigger_Jump_.point.pos, datas.Q11113Trigger_Jump_.point.rot, true, false, 1059)
    self:CreateQuestNpc(arg1, npcs.Npc10366Data_Jump.id, 1)
end

function Quest11113:OnSubFinish1111303(arg1)
    print("OnSubFinish1111303")
end

function Quest11113:OnSubFailed1111303(arg1)
    print("OnSubFailed1111303")
end

function Quest11113:OnSubStart1111304(arg1)
    print("OnSubStart1111304")
    actorMgr:CreateActorWithPos(datas.Q11113Trigger_Dungeon_.alias, datas.Q11113Trigger_Dungeon_.script, datas.Q11113Trigger_Dungeon_.id, 0, datas.Q11113Trigger_Dungeon_.point.pos, datas.Q11113Trigger_Dungeon_.point.rot, true, false, 1059)
    self:CreateQuestNpc(arg1, npcs.Npc10349Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10350Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10351Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10352Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10353Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc10359Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc10362Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc10363Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc10364Data.id, 9)
end

function Quest11113:OnSubFinish1111304(arg1)
    print("OnSubFinish1111304")
    self:SafeDestroyQuestNpc(npcs.Npc10349Data.alias, 1059)
    self:SafeDestroyQuestNpc(npcs.Npc10350Data.alias, 1059)
    self:SafeDestroyQuestNpc(npcs.Npc10351Data.alias, 1059)
    self:SafeDestroyQuestNpc(npcs.Npc10352Data.alias, 1059)
    self:SafeDestroyQuestNpc(npcs.Npc10353Data.alias, 1059)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11113:OnSubFailed1111304(arg1)
    print("OnSubFailed1111304")
end

function Quest11113:OnSubStart1111305(arg1)
    print("OnSubStart1111305")
    self:CreateQuestNpc(arg1, npcs.Npc1021Data_Dungeon.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10343Data_Dungeon.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10344Data_Dungeon.id, 3)
end

function Quest11113:OnSubFinish1111305(arg1)
    print("OnSubFinish1111305")
    self:SafeDestroyQuestNpc(npcs.Npc1021Data_Dungeon.alias, 1059)
    self:SafeDestroyQuestNpc(npcs.Npc10343Data_Dungeon.alias, 1059)
    self:SafeDestroyQuestNpc(npcs.Npc10344Data_Dungeon.alias, 1059)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11113:OnSubFailed1111305(arg1)
    print("OnSubFailed1111305")
end

function Quest11113:OnSubStart1111307(arg1)
    print("OnSubStart1111307")
    actorMgr:CreateActorWithPos(datas.Q11113Trigger_.alias, datas.Q11113Trigger_.script, datas.Q11113Trigger_.id, 0, datas.Q11113Trigger_.point.pos, datas.Q11113Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10366Data.id, 1)
end

function Quest11113:OnSubFinish1111307(arg1)
    print("OnSubFinish1111307")
    self:SafeDestroyQuestNpc(npcs.Npc10366Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11113:OnSubFailed1111307(arg1)
    print("OnSubFailed1111307")
end

return Quest11113
