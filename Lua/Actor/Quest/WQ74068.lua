require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74068 = class("Quest74068", QuestActorProxy)
Quest74068.defaultAlias = "Quest74068"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74068:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406801"] = self.OnSubStart7406801,
        ["7406802"] = self.OnSubStart7406802,
        ["7406803"] = self.OnSubStart7406803
    }
end

function Quest74068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406801"] = self.OnSubFinish7406801,
        ["7406802"] = self.OnSubFinish7406802,
        ["7406803"] = self.OnSubFinish7406803
    }
end

function Quest74068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74068:Start()
    print("Start")
end

function Quest74068:OnDestroy()
    print("OnDestroy")
end

function Quest74068:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74068:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74068:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74068:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74068:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74068:CheckSitPoint()
    print("CheckSitPoint")
    local tbl = {}
    local v = {}
    local n = 7406801
    v[1] = "SitPoint_01"
    v[2] = n
    local tbl2 = {}
    local n2 = 7406801
    tbl2[1] = "SitPoint_02"
    tbl2[2] = n2
    local tbl3 = {}
    local n3 = 7406801
    tbl3[1] = "SitPoint_03"
    tbl3[2] = n3
    tbl[1] = v
    tbl[2] = tbl2
    tbl[3] = tbl3
    print("-----ReadytoSit-----")
    for i = 1, #tbl do
        print("SitPointName = " .. tbl[i][1])
        local pos = sceneData:GetDummyPoint(3, tbl[i][1]).pos
        local avatarPos = actorUtils.GetAvatarPos()
        print("[" .. i .. "]" .. " SitPos[x=" .. pos.x .. " , z=" .. pos.z .. "]   PlayerPos[x=" .. avatarPos.x .. " , z=" .. avatarPos.z .. "]")
        if math.abs(pos.x - avatarPos.x) < 1 then
            if math.abs(pos.z - avatarPos.z) < 1 then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    if 3 == sceneData.currSceneID then
                        print("[" .. i .. "]" .. "FinishQuest = " .. tbl[i][2])
                        actorUtils.FinishQuestID(false, 7406801)
                        Quest74068:RegisterStandingEvent()
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("before standing")
    Quest74068:RegisterStandingEvent()
end

function Quest74068:RegisterSittingEvent()
    print("RegisterSittingEvent")
    Quest74068:CallOnAvatarSit(Quest74068.CheckSitPoint)
end

function Quest74068:RegisterStandingEvent()
    print("RegisterStandingEvent")
    Quest74068:CallOnAvatarStand(Quest74068.RegisterSittingEvent)
end

function Quest74068:OnSubStart7406801(arg1)
    print("OnSubStart7406801")
    this:CreateQuestNpc(arg1, npcs.Npc5221Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5222Data.id, 0)
    this:RegisterSittingEvent()
    this:GetQuestNpcActor(npcs.Npc5221Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5222Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74068:OnSubFinish7406801(arg1)
    print("OnSubFinish7406801")
end

function Quest74068:OnSubStart7406802(arg1)
    print("OnSubStart7406802")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5221Data.id, 7406802, 0, 6, 1)
    this:CreateQuestNpc(arg1, npcs.Npc5222Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5221Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5222Data.alias):DisableInteeHeadCtrl(false)
end

function Quest74068:OnSubFinish7406802(arg1)
    print("OnSubFinish7406802")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 1, nil, nil)
    self:SetNavigationByMainId(74068, true)
end

function Quest74068:OnSubStart7406803(arg1)
    print("OnSubStart7406803")
    this:DailyNpcSafeHideSelf(npcs.Npc5210Data.alias, 1, true)
end

function Quest74068:OnSubFinish7406803(arg1)
    print("OnSubFinish7406803")
    this:SafeDestroyQuestNpc(npcs.Npc5221Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5222Data.alias, 3)
end

return Quest74068
