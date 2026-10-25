require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75014 = class("Quest75014", QuestActorProxy)
Quest75014.defaultAlias = "Quest75014"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75014:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501405"] = self.OnSubStart7501405,
        ["7501404"] = self.OnSubStart7501404,
        ["7501415"] = self.OnSubStart7501415,
        ["7501412"] = self.OnSubStart7501412,
        ["7501406"] = self.OnSubStart7501406,
        ["7501408"] = self.OnSubStart7501408,
        ["7501411"] = self.OnSubStart7501411,
        ["7501409"] = self.OnSubStart7501409,
        ["7501410"] = self.OnSubStart7501410
    }
end

function Quest75014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501405"] = self.OnSubFinish7501405,
        ["7501404"] = self.OnSubFinish7501404,
        ["7501415"] = self.OnSubFinish7501415,
        ["7501412"] = self.OnSubFinish7501412,
        ["7501406"] = self.OnSubFinish7501406,
        ["7501408"] = self.OnSubFinish7501408,
        ["7501411"] = self.OnSubFinish7501411,
        ["7501409"] = self.OnSubFinish7501409,
        ["7501410"] = self.OnSubFinish7501410
    }
end

function Quest75014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7501412"] = self.OnSubFailed7501412, ["7501406"] = self.OnSubFailed7501406}
end

function Quest75014:Start()
    print("Start")
end

function Quest75014:OnDestroy()
    print("OnDestroy")
end

function Quest75014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc6171.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6173.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6178.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21608.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6168.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21607.alias, 3)
    this:ActorDestroy("Trigger7501405")
end

function Quest75014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75014:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75014:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75014:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75014:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75014:RegisterSitttingEvent()
    Quest75014:CallOnAvatarSit(Quest75014.CheckSitPoint)
end

function Quest75014:CheckSitPoint()
    local tbl = {}
    local v = {}
    local n = 7501404
    v[1] = "DUMMY_POS_350900173"
    v[2] = n
    tbl[1] = v
    print("-----Ready to Sit-----")
    for i = 1, #tbl do
        print("SitPointName = " .. tbl[i][1])
        local pos = sceneData:GetDummyPoint(3, tbl[i][1]).pos
        local avatarPos = actorUtils.GetAvatarPos()
        print("[" .. i .. "]" .. "SitPos[x=" .. pos.x .. ",z=" .. pos.z .. "]  PlayerPos[x=" .. avatarPos.x .. ",z=" .. avatarPos.z .. "]")
        if math.abs(pos.x - avatarPos.x) < 10 then
            if math.abs(pos.z - avatarPos.z) < 50 then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    if 3 == sceneData.currSceneID then
                        print("[" .. i .. "]" .. "FinishQuest = " .. tbl[i][2])
                        actorUtils.FinishQuestID(false, tbl[i][2])
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("before standing")
    Quest75014:RegisterStandingEvent()
end

function Quest75014:RegisterStandingEvent()
    Quest75014:CallOnAvatarStand(Quest75014.RegisterSitttingEvent)
end

function Quest75014:OnSubStart7501405(arg1)
    print("OnSubStart7501405")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6173.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6178.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6274.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6172.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc21759.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Trigger7501405", "Actor/Gadget/Trigger7501405", 70900002, 0, points._Trigger7501405Point_.pos, points._Trigger7501405Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Trigger750140502", "Actor/Gadget/Trigger750140502", 70900002, 0, points._Trigger750140502Point_.pos, points._Trigger750140502Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Trigger_750140503", "Actor/Gadget/Trigger_750140503", 70900002, 0, points._Trigger_750140503Point_.pos, points._Trigger_750140503Point_.rot, true, false, nil)
    actorMgr:CreateActorWithPos("Trigger750140504", "Actor/Gadget/Trigger750140504", 70900002, 0, points._Trigger750140504Point_.pos, points._Trigger750140504Point_.rot, true, false, nil)
end

function Quest75014:OnSubFinish7501405(arg1)
    print("OnSubFinish7501405")
    this:ActorDestroy("Trigger7501405")
    this:ActorDestroy("Trigger750140502")
    this:ActorDestroy("Trigger_750140503")
    this:ActorDestroy("Trigger750140504")
end

function Quest75014:OnSubStart7501404(arg1)
    print("OnSubStart7501404")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:RegisterSitttingEvent()
        print("22222222222")
    end)
end

function Quest75014:OnSubFinish7501404(arg1)
    print("OnSubFinish7501404")
    this:QuestNarratorTask(datas.NarratorWithId_750140401, nil)
end

function Quest75014:OnSubStart7501415(arg1)
    print("OnSubStart7501415")
end

function Quest75014:OnSubFinish7501415(arg1)
    print("OnSubFinish7501415")
end

function Quest75014:OnSubStart7501412(arg1)
    print("OnSubStart7501412")
    actorMgr:CreateActorWithPos("Trigger7501412", "Actor/Gadget/Trigger7501412", 70900002, 0, points._Trigger7501412Point_.pos, points._Trigger7501412Point_.rot, true, false, 3)
end

function Quest75014:OnSubFinish7501412(arg1)
    print("OnSubFinish7501412")
    this:ActorDestroy("Trigger7501412")
    this:QuestNarratorTask(datas.NarratorWithId_7501412, nil)
end

function Quest75014:OnSubFailed7501412(arg1)
    print("OnSubFailed7501412")
    this:TransmitPlayerByQuestId(7501412, 3, nil, nil, nil)
end

function Quest75014:OnSubStart7501406(arg1)
    print("OnSubStart7501406")
    actorMgr:CreateActorWithPos("Trigger7501406", "Actor/Gadget/Trigger7501406", 70900002, 0, points._Trigger7501406Point_.pos, points._Trigger7501406Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Trigger7501407", "Actor/Gadget/Trigger7501407", 70900002, 0, points._Trigger7501407Point_.pos, points._Trigger7501407Point_.rot, true, false, 3)
end

function Quest75014:OnSubFinish7501406(arg1)
    print("OnSubFinish7501406")
    this:ActorDestroy("Trigger7501406")
    this:ActorDestroy("Trigger7501407")
end

function Quest75014:OnSubFailed7501406(arg1)
    print("OnSubFailed7501406")
    this:TransmitPlayerByQuestId(7501406, 2, nil, nil, nil)
end

function Quest75014:OnSubStart7501408(arg1)
    print("OnSubStart7501408")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21608.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6168.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc21758.id, 0, false, 0)
end

function Quest75014:OnSubFinish7501408(arg1)
    print("OnSubFinish7501408")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21608.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6168.alias)
end

function Quest75014:OnSubStart7501411(arg1)
    print("OnSubStart7501411")
    this:NpcCreateWithNpcTrigger(npcs.Npc21607.id, 0, 10, 7501411)
    this:CreateQuestNpc(arg1, npcs.Npc21790.id, 0, false, 0)
end

function Quest75014:OnSubFinish7501411(arg1)
    print("OnSubFinish7501411")
    this:SafeDestroyQuestNpc(npcs.Npc21607.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21758.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21790.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest75014:OnSubStart7501409(arg1)
    print("OnSubStart7501409")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Paimon.id, 0, 7501409, 10)
end

function Quest75014:OnSubFinish7501409(arg1)
    print("OnSubFinish7501409")
    this:SafeDestroyQuestNpc(npcs.Npc21607.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Paimon.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21759.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21790.alias, 3)
end

function Quest75014:OnSubStart7501410(arg1)
    print("OnSubStart7501410")
    this:NpcCreateWithNpcTrigger(npcs.Npc6173.id, 0, 5, 7501410)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6285.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6168.id, arg1)
end

function Quest75014:OnSubFinish7501410(arg1)
    print("OnSubFinish7501410")
    this:SafeDestroyQuestNpc(npcs.Npc6173.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6178.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6274.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6285.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6168.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6172.alias, 3)
end

return Quest75014
