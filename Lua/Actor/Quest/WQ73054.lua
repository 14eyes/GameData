require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73054 = class("Quest73054", QuestActorProxy)
Quest73054.defaultAlias = "Quest73054"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73054:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73054:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305401"] = self.OnSubStart7305401,
        ["7305438"] = self.OnSubStart7305438,
        ["7305402"] = self.OnSubStart7305402,
        ["7305403"] = self.OnSubStart7305403,
        ["7305439"] = self.OnSubStart7305439,
        ["7305440"] = self.OnSubStart7305440,
        ["7305404"] = self.OnSubStart7305404,
        ["7305405"] = self.OnSubStart7305405,
        ["7305406"] = self.OnSubStart7305406,
        ["7305407"] = self.OnSubStart7305407,
        ["7305408"] = self.OnSubStart7305408,
        ["7305409"] = self.OnSubStart7305409,
        ["7305410"] = self.OnSubStart7305410,
        ["7305411"] = self.OnSubStart7305411,
        ["7305412"] = self.OnSubStart7305412,
        ["7305413"] = self.OnSubStart7305413,
        ["7305446"] = self.OnSubStart7305446,
        ["7305414"] = self.OnSubStart7305414,
        ["7305441"] = self.OnSubStart7305441,
        ["7305415"] = self.OnSubStart7305415,
        ["7305442"] = self.OnSubStart7305442,
        ["7305447"] = self.OnSubStart7305447,
        ["7305416"] = self.OnSubStart7305416,
        ["7305422"] = self.OnSubStart7305422,
        ["7305423"] = self.OnSubStart7305423,
        ["7305424"] = self.OnSubStart7305424,
        ["7305425"] = self.OnSubStart7305425,
        ["7305427"] = self.OnSubStart7305427,
        ["7305428"] = self.OnSubStart7305428,
        ["7305429"] = self.OnSubStart7305429,
        ["7305430"] = self.OnSubStart7305430,
        ["7305445"] = self.OnSubStart7305445,
        ["7305432"] = self.OnSubStart7305432,
        ["7305433"] = self.OnSubStart7305433,
        ["7305431"] = self.OnSubStart7305431,
        ["7305434"] = self.OnSubStart7305434,
        ["7305435"] = self.OnSubStart7305435,
        ["7305417"] = self.OnSubStart7305417,
        ["7305418"] = self.OnSubStart7305418,
        ["7305420"] = self.OnSubStart7305420,
        ["7305436"] = self.OnSubStart7305436,
        ["7305437"] = self.OnSubStart7305437,
        ["7305443"] = self.OnSubStart7305443,
        ["7305426"] = self.OnSubStart7305426,
        ["7305421"] = self.OnSubStart7305421,
        ["7305419"] = self.OnSubStart7305419,
        ["7305444"] = self.OnSubStart7305444
    }
end

function Quest73054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305401"] = self.OnSubFinish7305401,
        ["7305438"] = self.OnSubFinish7305438,
        ["7305402"] = self.OnSubFinish7305402,
        ["7305403"] = self.OnSubFinish7305403,
        ["7305439"] = self.OnSubFinish7305439,
        ["7305440"] = self.OnSubFinish7305440,
        ["7305404"] = self.OnSubFinish7305404,
        ["7305405"] = self.OnSubFinish7305405,
        ["7305406"] = self.OnSubFinish7305406,
        ["7305407"] = self.OnSubFinish7305407,
        ["7305408"] = self.OnSubFinish7305408,
        ["7305409"] = self.OnSubFinish7305409,
        ["7305410"] = self.OnSubFinish7305410,
        ["7305411"] = self.OnSubFinish7305411,
        ["7305412"] = self.OnSubFinish7305412,
        ["7305413"] = self.OnSubFinish7305413,
        ["7305446"] = self.OnSubFinish7305446,
        ["7305414"] = self.OnSubFinish7305414,
        ["7305441"] = self.OnSubFinish7305441,
        ["7305415"] = self.OnSubFinish7305415,
        ["7305442"] = self.OnSubFinish7305442,
        ["7305447"] = self.OnSubFinish7305447,
        ["7305416"] = self.OnSubFinish7305416,
        ["7305422"] = self.OnSubFinish7305422,
        ["7305423"] = self.OnSubFinish7305423,
        ["7305424"] = self.OnSubFinish7305424,
        ["7305425"] = self.OnSubFinish7305425,
        ["7305427"] = self.OnSubFinish7305427,
        ["7305428"] = self.OnSubFinish7305428,
        ["7305429"] = self.OnSubFinish7305429,
        ["7305430"] = self.OnSubFinish7305430,
        ["7305445"] = self.OnSubFinish7305445,
        ["7305432"] = self.OnSubFinish7305432,
        ["7305433"] = self.OnSubFinish7305433,
        ["7305431"] = self.OnSubFinish7305431,
        ["7305434"] = self.OnSubFinish7305434,
        ["7305435"] = self.OnSubFinish7305435,
        ["7305417"] = self.OnSubFinish7305417,
        ["7305418"] = self.OnSubFinish7305418,
        ["7305420"] = self.OnSubFinish7305420,
        ["7305436"] = self.OnSubFinish7305436,
        ["7305437"] = self.OnSubFinish7305437,
        ["7305443"] = self.OnSubFinish7305443,
        ["7305426"] = self.OnSubFinish7305426,
        ["7305421"] = self.OnSubFinish7305421,
        ["7305419"] = self.OnSubFinish7305419,
        ["7305444"] = self.OnSubFinish7305444
    }
end

function Quest73054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73054:Start()
    print("Start")
end

function Quest73054:OnDestroy()
    print("OnDestroy")
end

function Quest73054:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73054:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73054:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73054:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73054:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73054:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Finish7305440")
        self:FinishQuestID(false, 7305440)
    elseif arg1 == 2 then
        print("Finish7305441")
        self:FinishQuestID(false, 7305441)
    end
end

function Quest73054:OnSubStart7305401(arg1)
    print("OnSubStart7305401")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
    actorMgr:CreateActorWithPos("Q73054Trigger", "Actor/Gadget/Q73054Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305401_guide").pos, sceneData:GetDummyPoint(3, "Q7305401_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305401(arg1)
    print("OnSubFinish7305401")
end

function Quest73054:OnSubStart7305438(arg1)
    print("OnSubStart7305438")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    actorMgr:CreateActorWithPos("Q73054Trigger1", "Actor/Gadget/Q73054Trigger1", 70900002, 0, {x = -2351.089, y = 152.0, z = 5178.812}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73054:OnSubFinish7305438(arg1)
    print("OnSubFinish7305438")
end

function Quest73054:OnSubStart7305402(arg1)
    print("OnSubStart7305402")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73054:OnSubFinish7305402(arg1)
    print("OnSubFinish7305402")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73054:OnSubStart7305403(arg1)
    print("OnSubStart7305403")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
    actorMgr:CreateActorWithPos("Q73054Trigger2", "Actor/Gadget/Q73054Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305403_guide").pos, sceneData:GetDummyPoint(3, "Q7305403_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305403(arg1)
    print("OnSubFinish7305403")
end

function Quest73054:OnSubStart7305439(arg1)
    print("OnSubStart7305439")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73054:OnSubFinish7305439(arg1)
    print("OnSubFinish7305439")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7305439, nil, "")
    end)

    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73054:OnSubStart7305440(arg1)
    print("OnSubStart7305440")
end

function Quest73054:OnSubFinish7305440(arg1)
    print("OnSubFinish7305440")
end

function Quest73054:OnSubStart7305404(arg1)
    print("OnSubStart7305404")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
end

function Quest73054:OnSubFinish7305404(arg1)
    print("OnSubFinish7305404")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7305404, nil, "")
    end)
end

function Quest73054:OnSubStart7305405(arg1)
    print("OnSubStart7305405")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    actorMgr:CreateActorWithPos("Q73054Trigger3", "Actor/Gadget/Q73054Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305405_guide").pos, sceneData:GetDummyPoint(3, "Q7305405_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305405(arg1)
    print("OnSubFinish7305405")
end

function Quest73054:OnSubStart7305406(arg1)
    print("OnSubStart7305406")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73054:OnSubFinish7305406(arg1)
    print("OnSubFinish7305406")
end

function Quest73054:OnSubStart7305407(arg1)
    print("OnSubStart7305407")
end

function Quest73054:OnSubFinish7305407(arg1)
    print("OnSubFinish7305407")
end

function Quest73054:OnSubStart7305408(arg1)
    print("OnSubStart7305408")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
end

function Quest73054:OnSubFinish7305408(arg1)
    print("OnSubFinish7305408")
end

function Quest73054:OnSubStart7305409(arg1)
    print("OnSubStart7305409")
end

function Quest73054:OnSubFinish7305409(arg1)
    print("OnSubFinish7305409")
end

function Quest73054:OnSubStart7305410(arg1)
    print("OnSubStart7305410")
end

function Quest73054:OnSubFinish7305410(arg1)
    print("OnSubFinish7305410")
end

function Quest73054:OnSubStart7305411(arg1)
    print("OnSubStart7305411")
end

function Quest73054:OnSubFinish7305411(arg1)
    print("OnSubFinish7305411")
end

function Quest73054:OnSubStart7305412(arg1)
    print("OnSubStart7305412")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73054:OnSubFinish7305412(arg1)
    print("OnSubFinish7305412")
end

function Quest73054:OnSubStart7305413(arg1)
    print("OnSubStart7305413")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73054:OnSubFinish7305413(arg1)
    print("OnSubFinish7305413")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73054:OnSubStart7305446(arg1)
    print("OnSubStart7305446")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
    actorMgr:CreateActorWithPos("Q73054Trigger14", "Actor/Gadget/Q73054Trigger14", 70900002, 0, {x = -2349.314, y = 220.673, z = 5561.435}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73054:OnSubFinish7305446(arg1)
    print("OnSubFinish7305446")
end

function Quest73054:OnSubStart7305414(arg1)
    print("OnSubStart7305414")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    actorMgr:CreateActorWithPos("Q73054Trigger4", "Actor/Gadget/Q73054Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305414_guide").pos, sceneData:GetDummyPoint(3, "Q7305414_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305414(arg1)
    print("OnSubFinish7305414")
end

function Quest73054:OnSubStart7305441(arg1)
    print("OnSubStart7305441")
end

function Quest73054:OnSubFinish7305441(arg1)
    print("OnSubFinish7305441")
end

function Quest73054:OnSubStart7305415(arg1)
    print("OnSubStart7305415")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 5)
end

function Quest73054:OnSubFinish7305415(arg1)
    print("OnSubFinish7305415")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20724Data.alias)
end

function Quest73054:OnSubStart7305442(arg1)
    print("OnSubStart7305442")
    self:CreateQuestNpcWithTrigger("Q73054Trigger15", 7305442, npcs.PaimonData.id, 1, 5)
end

function Quest73054:OnSubFinish7305442(arg1)
    print("OnSubFinish7305442")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:ShowTutorialDialog(1278)
    end)
end

function Quest73054:OnSubStart7305447(arg1)
    print("OnSubStart7305447")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
end

function Quest73054:OnSubFinish7305447(arg1)
    print("OnSubFinish7305447")
end

function Quest73054:OnSubStart7305416(arg1)
    print("OnSubStart7305416")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4218Data.alias):DoFreeStyle(4180, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
end

function Quest73054:OnSubFinish7305416(arg1)
    print("OnSubFinish7305416")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
end

function Quest73054:OnSubStart7305422(arg1)
    print("OnSubStart7305422")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpcWithTriggerBlack("Q73054Trigger16", 7305422, npcs.Npc20722Data.id, 2, 5, 0.5)
end

function Quest73054:OnSubFinish7305422(arg1)
    print("OnSubFinish7305422")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
end

function Quest73054:OnSubStart7305423(arg1)
    print("OnSubStart7305423")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 10)
    actorMgr:CreateActorWithPos("Q73054Trigger5", "Actor/Gadget/Q73054Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305423_guide").pos, sceneData:GetDummyPoint(3, "Q7305423_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305423(arg1)
    print("OnSubFinish7305423")
end

function Quest73054:OnSubStart7305424(arg1)
    print("OnSubStart7305424")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 5)
    actorMgr:CreateActorWithPos("Q73054Trigger6", "Actor/Gadget/Q73054Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305424_guide").pos, sceneData:GetDummyPoint(3, "Q7305424_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305424(arg1)
    print("OnSubFinish7305424")
end

function Quest73054:OnSubStart7305425(arg1)
    print("OnSubStart7305425")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 5)
    actorMgr:CreateActorWithPos("Q73054Trigger7", "Actor/Gadget/Q73054Trigger7", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305425_guide").pos, sceneData:GetDummyPoint(3, "Q7305425_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305425(arg1)
    print("OnSubFinish7305425")
end

function Quest73054:OnSubStart7305427(arg1)
    print("OnSubStart7305427")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 5)
    actorMgr:CreateActorWithPos("Q73054Trigger8", "Actor/Gadget/Q73054Trigger8", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305427_guide").pos, sceneData:GetDummyPoint(3, "Q7305427_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305427(arg1)
    print("OnSubFinish7305427")
    self:NarratorOnlyTask(datas.finish7305427, nil, "")
end

function Quest73054:OnSubStart7305428(arg1)
    print("OnSubStart7305428")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 5)
    actorMgr:CreateActorWithPos("Q73054Trigger9", "Actor/Gadget/Q73054Trigger9", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305428_guide").pos, sceneData:GetDummyPoint(3, "Q7305428_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305428(arg1)
    print("OnSubFinish7305428")
end

function Quest73054:OnSubStart7305429(arg1)
    print("OnSubStart7305429")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 5)
    actorMgr:CreateActorWithPos("Q73054Trigger10", "Actor/Gadget/Q73054Trigger10", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305429_guide").pos, sceneData:GetDummyPoint(3, "Q7305429_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305429(arg1)
    print("OnSubFinish7305429")
end

function Quest73054:OnSubStart7305430(arg1)
    print("OnSubStart7305430")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 5)
    actorMgr:CreateActorWithPos("Q73054Trigger11", "Actor/Gadget/Q73054Trigger11", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305430_guide").pos, sceneData:GetDummyPoint(3, "Q7305430_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305430(arg1)
    print("OnSubFinish7305430")
end

function Quest73054:OnSubStart7305445(arg1)
    print("OnSubStart7305445")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4218Data.id, 1, npcs.Npc4218Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 8)
end

function Quest73054:OnSubFinish7305445(arg1)
    print("OnSubFinish7305445")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
end

function Quest73054:OnSubStart7305432(arg1)
    print("OnSubStart7305432")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 10)
    actorMgr:CreateActorWithPos("Q73054Trigger12", "Actor/Gadget/Q73054Trigger12", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305432_guide").pos, sceneData:GetDummyPoint(3, "Q7305432_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305432(arg1)
    print("OnSubFinish7305432")
end

function Quest73054:OnSubStart7305433(arg1)
    print("OnSubStart7305433")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4218Data.id, 1, npcs.Npc4218Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20832Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20833Data.id, 8)
end

function Quest73054:OnSubFinish7305433(arg1)
    print("OnSubFinish7305433")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20725Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20832Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20833Data.alias, 3)
end

function Quest73054:OnSubStart7305431(arg1)
    print("OnSubStart7305431")
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 7)
end

function Quest73054:OnSubFinish7305431(arg1)
    print("OnSubFinish7305431")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
end

function Quest73054:OnSubStart7305434(arg1)
    print("OnSubStart7305434")
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpcWithTriggerBlack("Q73054Trigger17", 7305434, npcs.Npc4218Data.id, 1, 5, 0.5)
end

function Quest73054:OnSubFinish7305434(arg1)
    print("OnSubFinish7305434")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20724Data.alias)
end

function Quest73054:OnSubStart7305435(arg1)
    print("OnSubStart7305435")
end

function Quest73054:OnSubFinish7305435(arg1)
    print("OnSubFinish7305435")
end

function Quest73054:OnSubStart7305417(arg1)
    print("OnSubStart7305417")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
end

function Quest73054:OnSubFinish7305417(arg1)
    print("OnSubFinish7305417")
end

function Quest73054:OnSubStart7305418(arg1)
    print("OnSubStart7305418")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
end

function Quest73054:OnSubFinish7305418(arg1)
    print("OnSubFinish7305418")
end

function Quest73054:OnSubStart7305420(arg1)
    print("OnSubStart7305420")
end

function Quest73054:OnSubFinish7305420(arg1)
    print("OnSubFinish7305420")
end

function Quest73054:OnSubStart7305436(arg1)
    print("OnSubStart7305436")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 6)
    actorMgr:CreateActorWithPos("Q73054Trigger13", "Actor/Gadget/Q73054Trigger13", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305436_guide").pos, sceneData:GetDummyPoint(3, "Q7305436_guide").rot, true, false, 3)
end

function Quest73054:OnSubFinish7305436(arg1)
    print("OnSubFinish7305436")
    self:SafeDestroyQuestNpc(npcs.Npc1702Data.alias, 3)
end

function Quest73054:OnSubStart7305437(arg1)
    print("OnSubStart7305437")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73054:OnSubFinish7305437(arg1)
    print("OnSubFinish7305437")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73054:OnSubStart7305443(arg1)
    print("OnSubStart7305443")
end

function Quest73054:OnSubFinish7305443(arg1)
    print("OnSubFinish7305443")
end

function Quest73054:OnSubStart7305426(arg1)
    print("OnSubStart7305426")
end

function Quest73054:OnSubFinish7305426(arg1)
    print("OnSubFinish7305426")
end

function Quest73054:OnSubStart7305421(arg1)
    print("OnSubStart7305421")
end

function Quest73054:OnSubFinish7305421(arg1)
    print("OnSubFinish7305421")
end

function Quest73054:OnSubStart7305419(arg1)
    print("OnSubStart7305419")
end

function Quest73054:OnSubFinish7305419(arg1)
    print("OnSubFinish7305419")
end

function Quest73054:OnSubStart7305444(arg1)
    print("OnSubStart7305444")
end

function Quest73054:OnSubFinish7305444(arg1)
    print("OnSubFinish7305444")
end

return Quest73054
