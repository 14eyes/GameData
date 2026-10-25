require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75135 = class("Quest75135", QuestActorProxy)
Quest75135.defaultAlias = "Quest75135"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75135:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75135:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513501"] = self.OnSubStart7513501,
        ["7513502"] = self.OnSubStart7513502,
        ["7513503"] = self.OnSubStart7513503,
        ["7513506"] = self.OnSubStart7513506,
        ["7513504"] = self.OnSubStart7513504,
        ["7513507"] = self.OnSubStart7513507,
        ["7513505"] = self.OnSubStart7513505
    }
end

function Quest75135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513501"] = self.OnSubFinish7513501,
        ["7513502"] = self.OnSubFinish7513502,
        ["7513503"] = self.OnSubFinish7513503,
        ["7513506"] = self.OnSubFinish7513506,
        ["7513504"] = self.OnSubFinish7513504,
        ["7513507"] = self.OnSubFinish7513507,
        ["7513505"] = self.OnSubFinish7513505
    }
end

function Quest75135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75135:Start()
    print("Start")
end

function Quest75135:OnDestroy()
    print("OnDestroy")
end

function Quest75135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75135:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75135:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest75135:OnSubStart7513501(arg1)
    print("OnSubStart7513501")
    actorMgr:CreateActorWithPos("Q7513501_Trigger", "Actor/Gadget/Q7513501_Trigger", 70900002, 0, {x = -216.204, y = 648.645, z = 10068.23}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75135:OnSubFinish7513501(arg1)
    print("OnSubFinish7513501")
end

function Quest75135:OnSubStart7513502(arg1)
    print("OnSubStart7513502")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21583Data.id, 0, 7513502, 10)
end

function Quest75135:OnSubFinish7513502(arg1)
    print("OnSubFinish7513502")
    this:SafeDestroyQuestNpc(npcs.Npc21583Data.alias, 3)
end

function Quest75135:OnSubStart7513503(arg1)
    print("OnSubStart7513503")
    actorMgr:CreateActorWithPos("Q7513503_Trigger", "Actor/Gadget/Q7513503_Trigger", 70900002, 0, {x = 77.895, y = 794.744, z = 9709.601}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest75135:OnSubFinish7513503(arg1)
    print("OnSubFinish7513503")
end

function Quest75135:OnSubStart7513506(arg1)
    print("OnSubStart7513506")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21583Data.id, 0, 7513506, 30)
end

function Quest75135:OnSubFinish7513506(arg1)
    print("OnSubFinish7513506")
    this:SafeDestroyQuestNpc(npcs.Npc21583Data.alias, 3)
end

function Quest75135:OnSubStart7513504(arg1)
    print("OnSubStart7513504")
end

function Quest75135:OnSubFinish7513504(arg1)
    print("OnSubFinish7513504")
end

function Quest75135:OnSubStart7513507(arg1)
    print("OnSubStart7513507")
end

function Quest75135:OnSubFinish7513507(arg1)
    print("OnSubFinish7513507")
end

function Quest75135:OnSubStart7513505(arg1)
    print("OnSubStart7513505")
    actorMgr:CreateActorWithPos("Q7513505_Trigger", "Actor/Gadget/Q7513505_Trigger", 70900002, 0, {x = -300.206, y = 1300.817, z = 9819.254}, {x = 0, y = 36.75, z = 0}, true, false, 3)
end

function Quest75135:OnSubFinish7513505(arg1)
    print("OnSubFinish7513505")
    this:TransmitPlayerByQuestId(7513505, 7513611, nil, nil, nil)
end

return Quest75135
